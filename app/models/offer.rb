class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :price_per_date, presence: true
end
