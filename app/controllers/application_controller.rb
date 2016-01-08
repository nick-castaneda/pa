class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include TranscriptsHelper

  def landing_page
    @disable_nav = true
  end

private

  # This function confirms a logged-in user
  # If user isn't logged in, store the desired location, flash an error,
  # and redirect to the login page
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

end
