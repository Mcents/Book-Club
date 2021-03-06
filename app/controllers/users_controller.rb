class UsersController < ApplicationController

  def new
    
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome, #{@user.username}"
      redirect_to login_path
    else
      flash[:notice] = "Invalid Credentials"
      redirect_to new_user_path
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name)
  end
end
