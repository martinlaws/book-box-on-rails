class TradeWallController < ApplicationController
  before_action :require_login

  def index
    @books = Book.includes(:trades)
  end

end
