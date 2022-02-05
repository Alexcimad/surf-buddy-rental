class Offer < ApplicationRecord
  geocoded_by :location
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :title, :description, :price_per_date, :location, presence: true
  after_validation :geocode, if: :will_save_change_to_location?
end
