require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  def setup
    @user = users(:nick)
    @other_user = users(:brody)
  end

  # Tests for home page. Checks if new method runs successfuly and if
  # the title is correct.
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Home | PoliTate"
  end

  # Tests for registration page. Checks if new method runs successfuly
  # and if the title is correct.
  test "should get new" do
    get :new
    assert_response :success
    assert_select "title", "Registration | PoliTate"
  end

  # Grabs the edit page.
  # If a flash pops up, assert_not false
  # If redirected to login, assert true
  test "should redirect edit when not logged in" do
    get :edit, id: @user
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  # Try to update.
  # If a flash pops up, assert_not false
  # If redirected to login, assert true
  test "should redirect update when not logged in" do
    patch :update, id: @user, user: { name: @user.name, email: @user.email }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  # Test logs in as brody and tries to edit nick's prof
  # If "profile updated" doesn't flash, assert true
  # If app redirects to the home, assert true
  test "should redirect edit when logged in as wrong user" do
    log_in_as(@other_user)
    get :edit, id: @user
    assert flash.empty?
    assert_redirected_to root_url
  end

  # Test logs in as brody and tries to update nick's prof
  # If "profile updated" doesn't flash, assert true
  # If app redirects to the home, assert true
  test "should redirect update when logged in as wrong user" do
    log_in_as(@other_user)
    patch :update, id: @user, user: { name: @user.name, email: @user.email }
    assert flash.empty?
    assert_redirected_to root_url
  end

end
