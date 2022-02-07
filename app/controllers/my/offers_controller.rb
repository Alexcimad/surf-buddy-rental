class My::OffersController < ApplicationController
  def index
    @offers = Offer.all.where(user_id: current_user)
  end
end
