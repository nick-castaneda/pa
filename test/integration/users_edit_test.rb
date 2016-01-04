require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:nick)
  end

  # Test grabs the edit page logs in the test user
  # If the edit page renders, assert true
  # Test tries to edit the user with an empty name, a bad email, and
  # wrong passwords
  # If the edit page rerenders, assert true
  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template "users/edit"
    patch user_path(@user), user: { name:  "", email: "foo@invalid", password: "foo", password_confirmation: "bar"}
    assert_template "users/edit"
  end

  # This test grabs the edit user page and logs in the test user
  # You try to edit without logging in, you're redirected to login, then
  # after logging in the app returns you to edit.
  # If the edit template renders, assert true
  # Test runs an edit on the test user with a valid name, email, and pw
  # If the flash appears, assert_not false
  # If the app redirects to the user profile, assert true
  # The reload method reloads the attribute values from the database
  # If the database name equals the name variable, assert true
  # If the database email equals the email variable, assert true
  test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    name  = "Foo Bar"
    email = "foo@bar.com"
    patch user_path(@user), user: { name:  name, email: email, password: "", password_confirmation: "" }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name,  @user.name
    assert_equal email, @user.email
  end

end
