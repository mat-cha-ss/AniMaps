class CreateLocationCandidates < ActiveRecord::Migration[8.1]
  def change
    create_table :location_candidates do |t|
      t.references :anime, null: false, foreign_key: true
      t.string :name_ja
      t.string :name_en
      t.string :address_ja
      t.string :address_en
      t.references :city, null: true, foreign_key: true
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.string :source_url
      t.text :evidence
      t.references :location, null: true, foreign_key: true
      t.string :status, null: false, default: "pending"

      t.timestamps
    end
  end
end
