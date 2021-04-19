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
class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :votes

  include ImageUploader::Attachment(:image)

  validates :title, presence: true
  validates :image_data, presence: true
  validates :body, presence: true, length: { maximum: 300 }

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
  scope :order_category, -> { order(:category_id) }

  def title=(name)
    write_attribute(:title, name.to_s.titleize)
  end

  def liked?(user)
    votes.find { |vote| vote.user_id == user.id }
  end
end
