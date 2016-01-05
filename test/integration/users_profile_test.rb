require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest

  # Gives access to full_title helper
  include ApplicationHelper

  def setup
    @user = users(:nick)
  end

  # This test grabs the user profile page
  # If the user profile page renders, assert true
  #
  # If the h1 tag contains the user name, assert true
  # If the number of transcripts equals the full html source? assert true
  # ????????????????
  # If each transcript's content shows on the page, assert true
  test "profile display" do
    get user_path(@user)
    assert_template "users/show"
    assert_select "title", full_title(@user.name)
    assert_select "h1", text: @user.name
    assert_match @user.transcripts.count.to_s, response.body
    assert_select 'div.pagination'
    @user.transcripts.paginate(page: 1).each do |transcript|
      assert_match transcript.content, response.body
    end
  end

end
