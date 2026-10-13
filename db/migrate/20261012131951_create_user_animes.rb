class CreateUserAnimes < ActiveRecord::Migration[8.1]
  def change
    create_table :user_animes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :anime, null: false, foreign_key: true
      t.string :status, null: false
      t.integer :score

      t.timestamps
    end

    add_index :user_animes, [:user_id, :anime_id], unique: true
  end
end
