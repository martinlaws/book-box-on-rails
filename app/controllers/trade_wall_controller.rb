class TradeWallController < ApplicationController

  def index
    @books = Book.all
    @users = User.all.includes(:location)
  end

end
