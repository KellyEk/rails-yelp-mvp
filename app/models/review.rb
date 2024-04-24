class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { within: 0..5, message: "%{value} is not a valid rating" }
  validates :rating, numericality: { only_integer: true }
end
