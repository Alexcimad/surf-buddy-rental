class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  validates  :total_price, :start_date, :end_date, presence: true
end
