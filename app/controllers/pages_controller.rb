class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home]

  def home
    @offers = Offer.last(3)
  end
end
