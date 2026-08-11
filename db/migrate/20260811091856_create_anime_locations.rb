class CreateAnimeLocations < ActiveRecord::Migration[8.1]
  def change
    create_table :anime_locations do |t|
      t.references :anime, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.string :source_url
      t.text :notes

      t.timestamps
    end

    add_index :anime_locations, [:anime_id, :location_id], unique: true
  end
end
