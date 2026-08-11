class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.string :name_ja
      t.string :name_en
      t.references :location, null: false, foreign_key: true
      t.references :event_type, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :fee_note
      t.string :official_url
      t.text :description

      t.timestamps
    end
  end
end
