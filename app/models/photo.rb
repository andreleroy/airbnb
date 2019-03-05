class Photo < ApplicationRecord
  belongs_to :listing
  mount_uploader :url, PhotoUploader
end
