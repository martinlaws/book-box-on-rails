class TradeWallController < ApplicationController
  before_action :require_login

  def index
    @books = Book.includes(user: :location).includes(:trades)
  end

end
