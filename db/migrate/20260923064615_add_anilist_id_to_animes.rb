class AddAnilistIdToAnimes < ActiveRecord::Migration[8.1]
  def change
    add_column :animes, :anilist_id, :integer
    add_index :animes, :anilist_id, unique: true
  end
end
