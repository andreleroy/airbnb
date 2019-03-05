class AddPhotosToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :photos, :json
  end
end
