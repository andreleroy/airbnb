class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos, :bookings
  validates :name, :description, :capacity, :addresss, :nightly_rate, presence: true
  validates :type, presence: true, inclusion: { in: ["Apartment", "House", "Secondary unit", "Unique space", "Bed and breakfast", "Boutique hotel"] }
  validates :capacity, :nightly_rate, numericality: { only_integer: true }
end
