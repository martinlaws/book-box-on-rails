class UsersController < ApplicationController
  include UserActions

  before_action :load_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to trade_wall_index_path
    else
      render :new
    end
  end

  def logout
    session.clear
    redirect_to :back
  end
  
  protected

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
