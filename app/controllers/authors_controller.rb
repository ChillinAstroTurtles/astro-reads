class AuthorsController < ApplicationController
  before_action :set_author

  def show
    @books = @author.books.limit(5)
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end
end
