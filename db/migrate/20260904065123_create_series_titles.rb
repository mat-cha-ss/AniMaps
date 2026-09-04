class CreateSeriesTitles < ActiveRecord::Migration[8.1]
  def change
    create_table :series_titles do |t|
      t.references :series, null: false, foreign_key: true
      t.references :title_type, null: false, foreign_key: true
      t.string :title, null: false
      t.string :language, null: false

      t.timestamps
    end

    add_index :series_titles,
              [ :series_id, :title_type_id, :title, :language ],
              unique: true
  end
end