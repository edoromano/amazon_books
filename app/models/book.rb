class Book < ApplicationRecord
  belongs_to :genre

  scope :filter_by_isbn, lambda { |isbn|
    where("lower(isbn) = ?", "#{isbn.downcase}")
  }
  scope :filter_by_genre_id, lambda { |genre_id|
    where("genre_id = ?", "#{genre_id}").limit(10)
  }

  def index
    Book.all
  end

  def self.search(params={})
    if params[:id]
      books = Book.find(params[:id])
    elsif params[:isbn]
      books = Book.filter_by_isbn(params[:isbn])
      books = books[0] if books.size > 0
    else
      books = Book.all.limit(10)
    end
    books
  end
end
