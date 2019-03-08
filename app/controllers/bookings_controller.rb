class BookingsController < ApplicationController
  def index
    @tab = params[:tab]
    if current_user.host? && @tab == 'my_hostings'
      @bookings = current_user.hostings
    else
      @bookings = current_user.bookings
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.total_price = (@booking.checkout_date - @booking.checkin_date).to_i * @booking.listing.nightly_rate.to_i
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
      redirect_to bookings_path(tab: 'my_bookings')
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
