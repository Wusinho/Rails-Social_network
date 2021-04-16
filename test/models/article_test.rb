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
require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
