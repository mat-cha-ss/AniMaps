class CreateAnimeCatalogEntries < ActiveRecord::Migration[8.1]
  def change
    create_table :anime_catalog_entries do |t|
      t.integer :mal_id
      t.integer :anilist_id
      t.string :title
      t.string :anime_type
      t.integer :episodes

      t.timestamps
    end
    add_index :anime_catalog_entries, :mal_id, unique: true
    add_index :anime_catalog_entries, :anilist_id, unique: true
  end
end
