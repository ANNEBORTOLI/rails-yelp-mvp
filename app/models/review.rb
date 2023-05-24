class Review < ApplicationRecord
  RATING = (0..5)
  belongs_to :restaurant

  validates :rating, :content, presence: true
  # validates :rating, inclusion: 0..5
  validates :rating, numericality: { only_integer: true, in: RATING }
end
