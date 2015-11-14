class BooksController < ApplicationController
  def index
    @books = Book.where(nil)
    @books = @books.page(params[:page])
    @books = @books.
      has_category?(params[:category]).
      page(params[:page]) if params[:category].present?
  end
end
