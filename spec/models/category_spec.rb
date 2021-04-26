# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }

    it { should validate_length_of(:name).is_at_most(20) }
  end

  describe 'Article' do
    it { should have_many(:articles) }
  end
end
