class ReviewsController < ApplicationController
  def index
    @offer = Offer.find(params[:offer_id])
    @reviews = @offer.reviews
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @review = Review.new
  end

  def create
    offer = Offer.find(params[:offer_id])
    review = Review.new(review_params)
    review.user = current_user
    review.offer = offer
    if review.save!
      redirect_to offer_reviews_path(offer)
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:comment,:rating)
  end
end
