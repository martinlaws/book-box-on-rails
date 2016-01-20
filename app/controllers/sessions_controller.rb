class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to trade_wall_index_path
    else
      flash.now[:alert] = "Log in failed ..."
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to :root
  end

end
