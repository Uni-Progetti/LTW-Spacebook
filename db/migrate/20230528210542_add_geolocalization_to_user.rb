class AddGeolocalizationToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :longitude, :string
    add_column :users, :latitude, :string
  end
end
