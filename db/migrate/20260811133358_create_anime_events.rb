class CreateAnimeEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :anime_events do |t|
      t.references :anime, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
