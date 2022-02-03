class BookingsController < ApplicationController
  def new
    @offer = Offer.find(params[:offer_id])
    @booking= Booking.new
  end

  def create
    offer = Offer.find(params[:offer_id])
    booking = Booking.new(booking_params)
    booking.user = current_user
    booking.offer = offer
    total_price = offer.price_per_date*(booking.end_rental_date-booking.start_rental_date)
    booking.total_price = total_price
    if booking.save!
      redirect_to offers_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_rental_date,:end_rental_date,:offer_id,:user_id,:total_price)
  end
end
