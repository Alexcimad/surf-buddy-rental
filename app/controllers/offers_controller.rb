class OffersController < ApplicationController
    #READ all -----------------------------
    def index
        @offers = Offer.all
    end

    #READ one -----------------------------
    def show
        @offer = Offer.find(params[:id])
    end

    #CREATE -----------------------------
    def new
        @offer = Offer.new
    end

    def create
        @offer = Offer.new(offer_params)
        @offer.save

        redirect_to offer_path(@offer)
    end

    #UPDATE -----------------------------
    def edit
        @offer = Offer.find(params[:id])
    end

    def update
        @offer = Offer.find(params[:id])
        @offer.update(offer_params)
    end

    #DELETE -----------------------------
    def destroy
        @offer = Offer.find(params[:id])
        @offer.destroy
    
        redirect_to offers_path
    end

    private #------------------------------------------------------

    def offer_params
        params.require(:offer).permit(:title, :description, :price_per_date, :start_available_date, :end_available_date, :photo)
    end

end
