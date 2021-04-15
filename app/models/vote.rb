# == Schema Information
#
# Table name: votes
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  article_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :user_id, uniqueness: {scope: :article_id}


  scope :popular, -> { select('article_id, count(article_id) as count').group(:article_id).order('count desc').limit(10) }
end
