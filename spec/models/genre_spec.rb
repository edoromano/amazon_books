require 'rails_helper'

RSpec.describe Genre, type: :model do
  let(:genre) { FactoryBot.build :genre }
  subject { genre }

  it { should respond_to(:name) }
  it { should have_many :books }

end
