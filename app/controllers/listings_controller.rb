class ListingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :description, :type, :capacity, :address, :nightly_rate)
  end

end


