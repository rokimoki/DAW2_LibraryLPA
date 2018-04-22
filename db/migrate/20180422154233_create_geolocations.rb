class CreateGeolocations < ActiveRecord::Migration[5.1]
  def change
    create_table :geolocations do |t|
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
