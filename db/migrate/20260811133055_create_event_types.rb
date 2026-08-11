class CreateEventTypes < ActiveRecord::Migration[8.1]
  def change
    create_table :event_types do |t|
      t.string :code, null: false
      t.string :name_ja, null: false
      t.string :name_en, null: false

      t.timestamps
    end

    add_index :event_types, :code, unique: true
  end
end
