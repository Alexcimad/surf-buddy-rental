class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :price, :start_available_date, :end_available_date, presence: true
end