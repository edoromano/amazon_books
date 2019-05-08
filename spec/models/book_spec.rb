require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { FactoryBot.build :book }
  subject { book }

  it { should respond_to(:title) }
  it { should respond_to(:isbn) }
  it { should respond_to(:average_rating) }
  it { should respond_to(:binding) }
  it { should respond_to(:manufacturer) }
  it { should respond_to(:number_of_items) }
  it { should respond_to(:number_of_pages) }
  it { should respond_to(:product_group) }
  it { should respond_to(:studio) }
  it { should respond_to(:publication_date) }
  it { should belong_to :genre }

end
