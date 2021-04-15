class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :votes

  include ImageUploader::Attachment(:image)

  validates :title, presence: true
  validates :image_data, presence: true

  scope :ordered_by_most_recent, -> {order(created_at: :desc) }
  scope :order_category, -> { order(:category_id) }

  def title=(s)
    write_attribute(:title, s.to_s.titleize) # The to_s is in case you get nil/non-string
  end


  def liked?(user)
    self.votes.find{|vote| vote.user_id == user.id}
  end

  

end
