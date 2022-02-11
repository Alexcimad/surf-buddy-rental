class Review < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :title,:comment,:rating, presence: true
  validates :rating, numericality: { only_integer: true, in: (0..5) }

end
