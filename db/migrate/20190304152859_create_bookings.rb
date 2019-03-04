class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :checkin_date
      t.date :checkout_date
      t.integer :guests_number
      t.string :trip_details
      t.string :status
      t.integer :total_price
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
