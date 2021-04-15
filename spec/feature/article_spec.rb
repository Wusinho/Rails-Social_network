require 'rails_helper'

RSpec.describe Article, type: :model do
  describe Article do
    it 'has associations' do
      should belong_to(:user)
      should have_many(:votes)
      should belong_to(:category)
    end

    it 'validates' do
      should validate_presence_of(:title)
      should validate_presence_of(:body)
    end
  end
end
