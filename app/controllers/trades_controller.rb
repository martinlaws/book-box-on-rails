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

  def decline_trade
    render nothing: true
    Trade.find(params[:trade]).destroy
  end

  private
  
  def trade_params
    params.permit(:status, :book_id).merge(posting_user: Book.find(params[:book_id]).user_id, receiving_user: current_user.id)
  end

end
