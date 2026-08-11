class CreateStudios < ActiveRecord::Migration[8.1]
  def change
    create_table :studios do |t|
      t.string :name_ja
      t.string :name_en

      t.timestamps
    end
  end
end
