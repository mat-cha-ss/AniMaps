class RemoveNameFromTitleTypes < ActiveRecord::Migration[8.1]
  def change
    remove_column :title_types, :name, :string
  end
end
