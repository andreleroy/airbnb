class PhotosController < ApplicationController

  def index
    @listing = Listing.find(params[:listing_id])
    @photo = Photo.new
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @photo = Photo.new(photo_params)
    @photo.listing = @listing
    if @photo.save
      redirect_to listing_photos_path(@listing)
    else
      render :index
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:url, :url_cache)
  end
end
