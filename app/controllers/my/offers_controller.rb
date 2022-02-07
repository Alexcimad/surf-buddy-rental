class My::OffersController < ApplicationController

  def index
    @offers = Offer.all.where(user_id: current_user)
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to my_offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price_per_date, :start_available_date, :location, :state, :end_available_date, photos: [])
  end
end
