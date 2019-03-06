class Listing < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings
  has_many :photos
  validates :name, :description, :capacity, :address, :nightly_rate, presence: true
  validates :property_type, presence: true, inclusion: { in: ["Apartment", "House", "Secondary unit", "Unique space", "Bed and breakfast", "Boutique hotel"] }
  validates :capacity, :nightly_rate, numericality: { only_integer: true }
end
