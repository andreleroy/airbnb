class BookingsController < ApplicationController
  def index
    @my_trips = current_user.bookings
    if current_user.host?
      @my_listings = current_user.listings
      @bookings = Booking.where(listing: @my_listings.pluck(:id))
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.save!
    redirect_to edit_booking_path(@booking)
    # redirect_to edit_booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    # new and save = create
    @booking = Booking.find(params[:id])

    @booking.update(trip_details_params)
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin_date, :checkout_date, :trip_details, :guests_number, :total_price, :listing_id)
  end

  def trip_details_params
    params.require(:booking).permit(:trip_details)
  end
end
