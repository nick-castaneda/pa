require 'test_helper'

class TranscriptsControllerTest < ActionController::TestCase

  def setup
    @transcript = transcripts(:orangutan)
  end

  # A non-user tries to post a new transcript
  # If the transcript count stays the same, assert true
  # If the app redirects to the login page, assert true
  test "should redirect create when not logged in" do
    assert_no_difference "Transcript.count" do
      post :create, id: @transcript, transcript: { content: "Lorem ipsum", title: "Lorem", date: "01/01/2001"}
    end
    assert_redirected_to login_url
  end

  # A non-user tries to destroy a transcript
  # If the transcript count stays the same, assert true
  # If the app redirects to the login page, assert true
  test "should redirect destroy when not logged in" do
    assert_no_difference "Transcript.count" do
      delete :destroy, id: @transcript
    end
    assert_redirected_to login_url
  end

end
