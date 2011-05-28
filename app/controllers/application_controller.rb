class ApplicationController < ActionController::Base
  
  protect_from_forgery 
  helper_method :logged_in?, :current_user
  
  def authorize 
    unless logged_in? && current_user
      flash[:notice] = "Por favor faça log in" 
      redirect_to new_session_url
    end 
  end

  # Returns true if the user is logged in,
  # false otherwise.
  def logged_in?
    session[:user_id]
  end

  # Accesses the current user from the session,
  # assigning the current user if necessary.
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
  
end
