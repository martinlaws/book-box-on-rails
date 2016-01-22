class SplashController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if current_user
      redirect_to trade_wall_index_path
    end
  end

end
