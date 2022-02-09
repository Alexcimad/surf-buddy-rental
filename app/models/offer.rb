class Offer < ApplicationRecord
  geocoded_by :location
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many_attached :photos
  validates :title, :description, :price_per_date, :state, :location, presence: true
  after_validation :geocode, if: :will_save_change_to_location?

  def ratings_average
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    return sum.fdiv(reviews.count).ceil(1)
  end

end
