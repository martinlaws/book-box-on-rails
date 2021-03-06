class UsersController < ApplicationController
  include UserActions

  before_action :load_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      Location.create(address: params[:user][:location], user_id: @user.id)
      session[:user_id] = @user.id
      redirect_to trade_wall_index_path
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
