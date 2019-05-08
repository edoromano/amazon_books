require 'open-uri'

class Genre < ApplicationRecord
  has_many :books

  def index
    Genre.all.limit(10)
  end

  def find(params={})
    Book.filter_by_genre_id(params[:id])
  end

  def self.fetch
    genres = []
    (1..5).each do |page|
      url = "https://www.goodreads.com/genres/list?page=#{page}"
      doc = Nokogiri::HTML(open(url))
      genres_result = doc.css('div.mainContentFloat > div.leftContainer > div.left > div.shelfStat > div > a.mediumText')
      genres_result.each do |genre|
        if genre.text =~ /[a-z|A-Z|\d|\s|\-]+/
          db_genre = Genre.find_by(name: genre.text)
          if db_genre.nil?
            Genre.create(:name => genre.text)
          end
        end
      end
    end
  end

end
