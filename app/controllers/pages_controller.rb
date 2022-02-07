class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home]

  def home
    @offers = Offer.last(3)
    @offerstorate = Offer.all.length
    @booking = Booking.all.length
    @users = User.all.length
  end
end
