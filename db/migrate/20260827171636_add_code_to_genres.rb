class AddCodeToGenres < ActiveRecord::Migration[8.1]
  def change
    add_column :genres, :code, :string, null: false
    add_index :genres, :code, unique: true
  end
end
