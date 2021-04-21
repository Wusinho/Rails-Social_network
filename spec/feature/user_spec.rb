require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has associations' do
    should have_many(:articles)
    should have_many(:votes)
  end

  it 'validates' do
    should validate_presence_of(:username)
    should validate_uniqueness_of(:username)
  end
end
