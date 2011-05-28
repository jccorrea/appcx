class HomeController < ApplicationController
  def index
  	
  	if logged_in?
  		redirect_to home_welcome_path
  	end
  	
  end

  def welcome
  	@user = User.find(session[:user_id])
  end

end