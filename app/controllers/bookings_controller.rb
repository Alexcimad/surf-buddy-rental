class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new 
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    offer = Offer.find(params[:offer_id])
    booking = Booking.new(booking_params)
    booking.user = current_user
    booking.offer = offer
    total_price = offer.price_per_date*(booking.end_rental_date-booking.start_rental_date)
    booking.total_price = total_price
  # raise
    if booking.save!
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def show_reviews
    @offer = Offer.find(params[:offer_id])

  end

  private

  def booking_params
    params.require(:booking).permit(:start_rental_date,:end_rental_date,:offer_id,:user_id,:total_price)
  end
end
