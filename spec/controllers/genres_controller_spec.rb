require 'rails_helper'

RSpec.describe GenresController, type: :controller do

  describe "GET #index" do
    before(:each) do
      @genre = FactoryBot.create :genre
      get :index
    end

    it { should respond_with 200 }
  end

end
