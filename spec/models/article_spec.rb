# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  title       :string
#  body        :text
#  image_data  :text
#  user_id     :bigint           not null
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:image_data)}
    it { should validate_length_of(:body).is_at_most(300)    }


  end

  describe 'Article' do
    it { should belong_to(:user) }

    it { should belong_to(:category)}

    it { should have_many(:votes) }
  end


end
