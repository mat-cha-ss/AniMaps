class AddCodeToPrefectures < ActiveRecord::Migration[8.1]
  def change
    add_column :prefectures, :code, :string, null: false
    add_index :prefectures, :code, unique: true
  end
end
