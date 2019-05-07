class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books
  end

  def show
    book = Book.search(params)
    render json: book
  end

end
