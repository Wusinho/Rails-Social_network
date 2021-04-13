class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category

  include ImageUploader::Attachment(:image)
  validates :title, presence: true
  validates :image_data, presence: true

  scope :ordered_by_most_recent, -> {order(created_at: :desc) }
  scope :order_category, -> { group(:category_id) }

end
