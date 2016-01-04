module SessionsHelper

  # The log_in method takes in a user and gives the session an attribute
  # set to that user's id.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Remembers a user in a persistent session. Runs user.remember method
  # and does some stuff with cookies I don't quite understand. I think
  # sets the remember token to a variable before it's hashed.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # Returns the current logged-in user by searching for a user with an
  # id matching the session id. If you haven't logged in and you're able
  # to set a user_id to a cookies user_id, make a user var equal to that
  # user. Then, if the user exists and it's cookies token equals the
  # remember digest ofter being hashed, log in the user and set the
  # current user to that.
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # Returns true if a user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Forgets a persistent session using the model function forget and
  # deleting the cookies for that user
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Destroys the current session based on the user id (not exactly sure
  # how this works), sets the current_user variable to nil, and runs the
  # forget method on the user.
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end


  ## These two functions are so you can go back to edit page after
  ## visiting it before you login
  # Redirects to stored location (or to the default). Then the stored
  # url is deleted.
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed as long as its a 'get' path
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end






end
