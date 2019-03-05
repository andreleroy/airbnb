class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :bookings
  validates :name, :description, :capacity, :address, :nightly_rate, presence: true
  validates :type, presence: true, inclusion: { in: ["Apartment", "House", "Secondary unit", "Unique space", "Bed and breakfast", "Boutique hotel"] }
  validates :capacity, :nightly_rate, numericality: { only_integer: true }
end
