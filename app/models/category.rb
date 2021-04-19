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

  validates :name, presence: true, length: { maximum: 20 }

  def name=(name)
    write_attribute(:name, name.to_s.titleize)
  end
end
