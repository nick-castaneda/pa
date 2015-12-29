class SessionsController < ApplicationController

  # New method is empty and loads the new page. Create method grabs a
  # user based on the email in the field (params[:session][:email]. That
  # email is downcased and matched with an email in the database. If
  # there is a user with that email and the password in the field
  # matches the password in the database through the authenticate
  # method, then the helper method log_in logins the user and the page
  # is redirected to the user page. Otherwise, an error flashes and the
  # new session page reloads.
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  # Destroy runs the log_out helper method and redirects to the index.
  def destroy
    log_out
    redirect_to root_url
  end

end
