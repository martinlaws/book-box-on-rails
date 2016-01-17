class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)

    if @book.save
      redirect_to trade_wall_index_path
    else
      render :new
    end

  end
  
  def show
    @book = Book.find(params[:id])
  end

  def toggle_availability
    book = Book.find(params[:book])
    book.update(availability: !book.availability)
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre).merge(user_id: current_user.id)
  end

end
