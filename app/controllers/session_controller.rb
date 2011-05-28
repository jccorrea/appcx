class SessionController < ApplicationController
  
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	
  	if user
      	session[:user_id] = user.id
      	redirect_to home_welcome_path
    else
      	flash[:error] = "E-mail ou senha inválidos!"
      	render 'new'
    end
    
  end
  
  def destroy
    session[:session_id] = nil
    session[:user_id] = nil
    redirect_to home_index_path, :notice => "Você efetuou logout."
  end

end
