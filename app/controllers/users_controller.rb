class UsersController < ApplicationController
  
  def index
  	@users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
  	@user = User.new(params[:user])
  	
  	if @user.save
  		session[:user_id] = @user.id
      redirect_to home_welcome_path, :notice => "Welcome to the app"
  	else
  		render 'new' 
  		# reload the form to display errors held in the user object
  	end
  	
  end
  
  def show
  	@user = User.find(session[:user_id])
  end
  
  def edit
    @user = User.find(session[:user_id])
  end
  
  def update
  	@user = User.find(session[:user_id])
  	
  	if @user.update_attributes(params[:user])
        flash[:notice] = 'Done!'
				redirect_to user_path
		else 
			flash[:error] = 'Can\'t do it!'
			render 'edit'
		end
  end
  
end
