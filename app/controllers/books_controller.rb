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

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre)
  end

end
