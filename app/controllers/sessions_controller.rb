class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = login(user_params[:email], user_params[:password])
      redirect_to trade_wall_index_path
    else
      @user = User.new
      flash.now[:alert] = 'Login failed'
      render action: :new
    end
  end

  def destroy
    session.clear
    redirect_to :root
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
