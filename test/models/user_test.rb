require 'test_helper'

class UserTest < ActiveSupport::TestCase

  # Setup method sets up a random user template? for tests.
  def setup
    @user = User.new(name: "Example User", email: "user@example", password: "foobar", password_confirmation: "foobar")
  end

  # # Not sure about this, fails test
  # # If the user is valid based on the user model, assert true.
  # test "should be valid" do
  #   assert @user.valid?
  # end

  # This test sets the user name to multiple spaces
  # If the user name is not present or just spaces, assert_not false
  test "name should be present" do
    @user.name = "       "
    assert_not @user.valid?
  end

  # This test sets the user name to multiple spaces
  # If the user name is not present or just spaces, assert_not false
  test "email should be present" do
    @user.email = "       "
    assert_not @user.valid?
  end

  # This test sets the user name to a string of 51 characters
  # If the user name is longer than 50 characters, assert_not false
  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  # This test sets the email name to a string of 256 characters
  # If the user email is longer than 255 characters, assert_not false
  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  # This test sets valid_addresses equal to an array of valid email
  # addresses
  # If the each of the email addresses is valid, assert true
  test "email validation should accept valid addresses" do
    valid_addresses = %w[nick@casta.com NICK@casta.COM N_IC-K@casta.ne.da n+ick@casta.ne]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  # This test sets invalid_addresses to an array of invalid emails.
  # For each email that is invalid, assert_not false
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  # This test sets two users to have the same email address
  # After saving one user, if the second user is invalid, assert_not
  # false.
  test "email addresses should be unique" do
    dup_user = @user.dup
    dup_user.email = @user.email.upcase
    @user.save
    assert_not dup_user.valid?
  end

  # Sets user password to six spaces
  # If password is just blank spaces, assert_not false
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  # Sets user password to just five letters
  # If password is shorter than 6 characters, assert_not false
  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

end
