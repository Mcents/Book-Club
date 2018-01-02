class SessionsController < ApplicationController
  
  def new
    
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Successful Login"
      redirect_to root_path

    else
      flash[:notice] = "Invalid Credentials"
      redirect_to new_login_path
    end
  end
end
