class BookshelfController < ApplicationController
  before_action :require_login

  def index
    @user_books = Book.where(:user_id == current_user)
    @posting_trades = current_user.posting_trades.includes(:book)
    @receiving_trades = current_user.receiving_trades.includes(:book)
  end
end
