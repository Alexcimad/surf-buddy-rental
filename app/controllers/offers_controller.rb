class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  # READ all
  def index
    if params[:query].present?
      if params[:km].present?
        @offers = Offer.near(params[:query],params[:km])
      else 
        @offers = Offer.near(params[:query],100)
      end
    else
      @offers = Offer.all
    end

    if params[:dates].present?
      result_date = params[:dates]
      start_date_string = result_date[-10..]
      start_date = Date.parse(start_date_string) 
      end_date_string = result_date[..10]
      end_date = Date.parse(end_date_string) 
      @offers = @offers.where("start_available_date <= ? AND end_available_date >= ?", start_date, end_date)
    end
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { offer: offer }),
        image_url: helpers.asset_url("logo.png")

      }
    end
  
  end

  # READ one
  def show
    @offer = Offer.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  # CREATE
  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  # UPDATE
  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to offers_path
  end

  # DELETE
  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price_per_date, :start_available_date, :location, :state, :end_available_date, photos: [])
  end
end
