class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:checkin_date, :checkout_date, :guests_number, :trip_details, :id_listing, :id_user, :total_price, :status)
  end
end
