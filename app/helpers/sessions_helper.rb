module SessionsHelper

  # The log_in method takes in a user and gives the session an attribute
  # set to that user's id.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user by searching for a user with an
  # id matching the session id.
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if a user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Destroys the current session based on the user id (not exactly sure
  # how this works) and sets the current_user variable to nil.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end
