class ListingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :description, :property_type, :capacity, :address, :nightly_rate)
  end

end


