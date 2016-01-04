require 'test_helper'

class TranscriptsControllerTest < ActionController::TestCase

  def setup
    @transcript = transcripts(:orangutan)
  end

  # # This test
  # test "should redirect create when not logged in" do
  #   assert_no_difference "Transcript.count" do
  #     post :create, transcript: { content: "Lorem ipsum", title: "Lorem", date: "01/01/2001"}
  #   end
  #   assert_redirected_to login_url
  # end

  # test "should redirect destroy when not logged in" do
  #   assert_no_difference "Transcript.count" do
  #     delete :destroy, id: @transcript
  #   end
  #   assert_redirected_to login_url
  # end

end
