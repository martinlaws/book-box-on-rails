class BookshelfController < ApplicationController
  before_action :require_login

  def index
    @books = Books.where(:user_id == current_user.id)
  end
end
