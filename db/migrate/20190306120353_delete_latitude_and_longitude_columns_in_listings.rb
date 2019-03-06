class DeleteLatitudeAndLongitudeColumnsInListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :latitude
    remove_column :listings, :longitude
  end
end
