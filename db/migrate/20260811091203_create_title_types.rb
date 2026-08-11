class CreateTitleTypes < ActiveRecord::Migration[8.1]
  def change
    create_table :title_types do |t|
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end

    add_index :title_types, :code, unique: true
  end
end
