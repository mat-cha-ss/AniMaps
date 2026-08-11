class CreateGenres < ActiveRecord::Migration[8.1]
  def change
    create_table :genres do |t|
      t.string :name_ja, null: false
      t.string :name_en, null: false

      t.timestamps
    end
  end
end
