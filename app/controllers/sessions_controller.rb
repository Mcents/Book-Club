class SessionsController < ApplicationController
  
  def new
    
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Successful Login"
      redirect_to root_path

    else
      flash[:notice] = "Invalid Credentials"
      redirect_to login_path
    end
  end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end
