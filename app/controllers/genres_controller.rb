class GenresController < ApplicationController
  def index
    render json: Genre.all
  end

  def show
    books =  Book.filter_by_genre_id(params[:id])
    render json: books
  end
end
