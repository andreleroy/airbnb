class User < ApplicationRecord
  has_many :listings
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader

  def host?
    listings.any?
  end

  def traveller?
    bookings.any?
  end
end
