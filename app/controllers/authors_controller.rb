class AuthorsController < ApplicationController
  before_action :set_author

  def show

  end

  def books

  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

end
