class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :vote

  include ImageUploader::Attachment(:image)

  validates :title, presence: true
  validates :image_data, presence: true

  scope :ordered_by_most_recent, -> {order(created_at: :desc) }
  scope :order_category, -> { order(:category_id) }





  def liked?(user)
    self.vote.find{|vote| vote.user_id == user.id}
  end

  

end
