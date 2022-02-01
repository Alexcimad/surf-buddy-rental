class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :title, :description, :price_per_date, presence: true
end
