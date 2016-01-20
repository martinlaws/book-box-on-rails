class TradesController < ApplicationController

  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)

    if @trade.save
      render nothing: true
    else
      render nothing: true
    end

  end

  def accept_trade
    render nothing: true

    trade = Trade.find(params[:id])
    book = Book.find(params[:book])

    trade.update(status: :completed)
    book.update(user_id: trade.receiving_user)
  end

  def decline_trade
    render nothing: true

    Trade.find(params[:id]).destroy
  end

  private
  
  def trade_params
    params.require(:trade).permit(:book_id, :posting_user, :receiving_user).merge(posting_user: Book.find(params[:trade][:book_id]).user_id, receiving_user: current_user.id)
  end

end
