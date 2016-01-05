require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:nick)
    @non_admin = users(:brody)
  end

  # Test logins test user nick and grabs the users path.
  # If the user index renders, assert true
  # If a paginate div is in the html, assert true
  # Set variable to paginate page 1
  # If all the user links and names show up, assert true
  # For all the users that are not the admin, if the delete link pops
  # up, assert true
  # Delete the non-admin. If the user count drops, assert true
  test "index including pagination and delete links" do
    log_in_as(@user)
    get users_path
    assert_template 'users/index'
    assert_select 'div.pagination'
    first_page_of_users = User.paginate(page: 1, :per_page => 15)
    first_page_of_users.each do |user|
      assert_select 'a[href=?]', user_path(user), text: user.name
      unless user == @admin
        assert_select 'a[href=?]', user_path(user), text: 'delete'
      end
    end
    assert_difference 'User.count', -1 do
      delete user_path(@non_admin)
    end
  end

  # Log in as a non-admin and grab the users index
  # If there are no delete links, assert true
  test "index as non-admin" do
    log_in_as(@non_admin)
    get users_path
    assert_select 'a', text: 'delete', count: 0
  end



end
