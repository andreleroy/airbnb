class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new
  end

  def create
    # new and save = create
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new(booking_params)

    @booking.user = current_user
    if @booking.save
      redirect_to edit_listing_booking(@listing, @booking)
    else
      render :new
    end
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
    params.require(:booking).permit(:checkin_date, :checkout_date, :trip_details, :guests_number, :total_price, :listing_id, :user_id )
  end

  def trip_details_params
    params.require(:booking).permit(:trip_details)
  end
end
