class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  # def duration(id)
  #   @booking = Booking.find(id)
  #   days = @booking.checkout_date - @booking.checkin_date
  #   days.to_i
  # end
end
