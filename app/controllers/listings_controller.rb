class ListingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @listing = Listing.new(listing_params)
  end

  def create
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :description, :type, :capacity, :address, :nightly_rate, :latitude, :longitude)
  end

end


