class CreateCities < ActiveRecord::Migration[8.1]
  def change
    create_table :cities do |t|
      t.references :prefecture, null: false, foreign_key: true
      t.string :name_ja, null: false
      t.string :name_en

      t.timestamps
    end
  end
end
