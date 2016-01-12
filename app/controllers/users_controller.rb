class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
