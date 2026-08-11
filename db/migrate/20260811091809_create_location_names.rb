class CreateLocationNames < ActiveRecord::Migration[8.1]
  def change
    create_table :location_names do |t|
      t.references :location, null: false, foreign_key: true
      t.string :name
      t.string :language

      t.timestamps
    end
  end
end
