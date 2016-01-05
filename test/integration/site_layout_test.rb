require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  # This test grabs the root page and checks if the users idex page
  # renders.
  # The assert_selects check to see if the links on the page go to the
  # correct route, substituting the ? for the associated address.
  test "home links" do
    get root_path
    assert_template "users/home"
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", new_user_path
  end

end
