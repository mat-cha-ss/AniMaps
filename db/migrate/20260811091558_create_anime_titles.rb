class CreateAnimeTitles < ActiveRecord::Migration[8.1]
  def change
    create_table :anime_titles do |t|
      t.references :anime, null: false, foreign_key: true
      t.references :title_type, null: false, foreign_key: true
      t.string :title, null: false
      t.string :language, null: false

      t.timestamps
    end
  end
end
