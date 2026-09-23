class AddMalIdToAnimes < ActiveRecord::Migration[8.1]
  def change
    add_column :animes, :mal_id, :integer
    add_index :animes, :mal_id, unique: true
  end
end
