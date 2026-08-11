class CreateAnimes < ActiveRecord::Migration[8.1]
  def change
    create_table :animes do |t|
      t.references :series, null: true, foreign_key: true
      t.date :release_date
      t.text :description

      t.timestamps
    end
  end
end
