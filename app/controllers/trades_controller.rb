class TradeController < ApplicationController

  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)

    if @trade.save
      redirect_to trade_wall_index_path
    else
      render :new
    end

  end

  private

  def trade_params
    require(:trade).permit(:posting_user, :receiving_user, :book_id, :status)
  end

end
