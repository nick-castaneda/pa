require 'test_helper'

class TranscriptTest < ActiveSupport::TestCase

  # Setup grabs the test user nick for the tests below. A transcript is
  # grabbed with lorem text. user.transcripts.build = Transcript.new,
  # but doesn't modify the database
  def setup
    @user = users(:nick)
    @transcript = @user.transcripts.build(content: "Lorem ipsum")
  end

  # If the transcript is valid, assert true
  test "should be valid" do
    assert @transcript.valid?
  end

  # This test first sets the user_id of the transcript to nil
  # If the transcript is not valid, assert_not false
  test "user id should be present" do
    @transcript.user_id = nil
    assert_not @transcript.valid?
  end

  # This test sets the content of the transcript to blank spaces
  # If the transcript is now invalid, assert_not false
  test "content should be present" do
    @transcript.content = "   "
    assert_not @transcript.valid?
  end

  # This test sets the content to 10,001 words
  # If the transcript is now invalid, assert_not false
  test "content should be at most 10,000 words" do
    @transcript.content = "9charword " * 10001
    assert_not @transcript.valid?
  end

  # If the most_recent var defined in transcripts.yml is equal to the
  # first? transcript, assert true
  test "order should be most recent first" do
    assert_equal transcripts(:most_recent), Transcript.first
  end








end
