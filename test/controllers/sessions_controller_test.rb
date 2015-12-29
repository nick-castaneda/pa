require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  # Tests for login page. Checks if new method runs successfuly and if
  # the title is correct.
  test "should get new" do
    get :new
    assert_response :success
    assert_select "title", "Login | PoliTate"
  end

end
