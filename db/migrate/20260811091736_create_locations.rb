class CreateLocations < ActiveRecord::Migration[8.1]
  def change
    create_table :locations do |t|
      t.references :city, null: false, foreign_key: true
      t.string :address_ja, null: false
      t.string :address_en
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.string :official_url

      t.timestamps
    end
  end
end
