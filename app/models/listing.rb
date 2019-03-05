class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, :capacity, :address, :nightly_rate, presence: true
  #no need for photo validation as host may want to add at later time
  validates :property_type, presence: true, inclusion: { in: ["Apartment", "House", "Secondary unit", "Unique space", "Bed and breakfast", "Boutique hotel"] }
  validates :capacity, :nightly_rate, numericality: { only_integer: true }
end
