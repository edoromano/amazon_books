FactoryBot.define do
  factory :book do
    isbn { Faker::IDNumber.valid }
    average_rating { (rand * (100-50) + 1).to_i }
    author { Faker::Book.author }
    binding { 'binding' }
    manufacturer { 'manufacturer'  }
    number_of_items { rand * (10-1) + 1 * 100 }
    number_of_pages { rand * (1092-1) + 1 * 100 }
    product_group { 'book' }
    publication_date { Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)  }
    studio { 'studio' }
    title { Faker::Book.title }
    genre { Genre.find(rand(1..1200)) }
  end
end
