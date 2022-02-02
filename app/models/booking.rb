class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  validates  :total_price, :start_rental_date, :end_rental_date, presence: true
end
