require 'test_helper'

class UsersControllerTest < ActionController::TestCase

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




end
