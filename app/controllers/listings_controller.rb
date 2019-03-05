class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    # new and save = create
    @listing = Listing.new(listing_params)

    @listing.user = current_user
    if @listing.save
      redirect_to listing_photos_path(@listing)
    else
      render :new
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :description, :property_type, :capacity, :address, :nightly_rate, { photos: []})
  end

end


