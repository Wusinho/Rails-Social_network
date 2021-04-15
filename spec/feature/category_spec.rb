require 'rails_helper'


RSpec.describe Category, type: :model do
    describe Category do
      it 'has associations' do
        should have_many(:articles)
      end
    end
end  