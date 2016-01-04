require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  # Setups the fake user nick from the users yml fixture to be used in
  # the tests below.
  def setup
    @user = users(:nick)
  end

  # This test makes sure that you can't log in with invalid information
  # The test grabs the login page
  # If the login template renders, assert_template true
  # The test then tries to login a user with an empty email and password
  # If the login template renders again, assert_template true
  # If the error flashes, assert_not false
  # The test then grabs the home page
  # If the flash now disappears, assert true.
  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, session: { email: "", password: "" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  # This test makes sure that you can log in with valid information
  # The test grabs the login page
  # The test then tries to login the test user with his correct password
  # If is_logged_in? is now true, assert true.
  # If the user is redirected to the user page, assert true
  # Follow_redirect! makes sure the page actually is accessed.
  # If the show template renders, assert_template true
  # If there is no longer a login link, assert_select true
  # If there are now two login links, assert_select true
  # If there is now a link to the user's prof, assert_select true
  # The test runs the delete logout_path
  # If a user is not logged in, assert_not false
  # If the app is redirected to the index page, assert true
  # Make sure the index renders
  # If there is now a login link, assert true
  # If there is no longer a logout link, assert true
  # If there is no longer a profile link, assert true
  test "login with valid information followed by logout" do
    get login_path
    post login_path, session: { email: @user.email, password: 'password' }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path, count: 2
    assert_select "a[href=?]", user_path(@user)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", user_path(@user), count: 1 # Maybe I'll take this out
  end

#   # I need to come back and study this test.
#   test "valid signup information" do
#     get new_user_path
#     assert_difference 'User.count', 1 do
#       post_via_redirect users_path, user: { name:  "Example User", email: "user@example.com", password: "password", password_confirmation: "password" }
#     end
#     assert_template 'users/show'
#     assert is_logged_in?
#   end
end
