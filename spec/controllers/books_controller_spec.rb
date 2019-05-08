require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  describe "GET #index" do
    context "More than 10 books in the DB" do
      before(:each) do
        11.times{ FactoryBot.create :book }
        get :index, :format => 'json'
      end

      it { should respond_with 200 }
      it { should json_response.size.eql? 10 }
    end
  end

  describe "GET #show" do
    context "Return book by search field" do
      before(:each) do
        @book = FactoryBot.create :book
        get :show, params: { id: @book.id }
      end

      it { should respond_with 200 }
      it "response should match the information from @book" do
        should json_response[:title].eql? @book.title
      end
    end
  end

end
