class Book < ApplicationRecord
  belongs_to :genre

  scope :filter_by_isbn, lambda { |isbn|
    where("lower(isbn) = ?", "%#{isbn.downcase}%")
  }
  scope :filter_by_genre_id, lambda { |genre_id|
    where("genre_id = ?", "#{genre_id}").limit(10)
  }

  def self.index
    Book.all.limit(10)
  end

  def self.search(params={})
    if params[:isbn]
      books = Book.filter_by_isbn(params[:isbn]).limit(10)
    elsif params[:genre_id]
      books = Book.filter_by_genre_id(params[:genre_id])
    else
      books = Book.all.limit(10)
    end
    books
  end
end
