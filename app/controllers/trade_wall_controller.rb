class TradeWallController < ApplicationController

  def index
    @books = Book.includes(user: :location).includes(:trades)
  end

end
