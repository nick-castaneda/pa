require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  # Starts at the registration page. User.count checks if a user is
  # created after the assert block tries to post an invalid user.
  # If the user count stays the same, assert_no_diff true
  # If the registration page reloads after failing, assert_template true
  test "invalid signup information" do
    get new_user_path
    assert_no_difference 'User.count' do
      post users_path, user: { name:  "", email: "user@invalid", password: "foo", password_confirmation: "bar" }
    end
    assert_template 'users/new'
  end

  # Starts at the registration page. User.count checks if a user is
  # created after the assert block tries to post valid user.
  # If the user count goes up one, assert_diff true
  # If the user's page renders afterwards, assert_template true
  # If the user is now logged in, assert true
  test "valid signup information" do
    get new_user_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name:  "Example User", email: "user@example.com", password: "password", password_confirmation: "password" }
    end
    assert_template 'users/show'
    assert is_logged_in?
  end

end
