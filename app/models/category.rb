# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :articles
  has_many :article_votes, through: :articles, source: :vote

  validates :name, presence: true, length: { maximum: 20 }
end
