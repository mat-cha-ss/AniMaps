class RemoveNamesFromSeries < ActiveRecord::Migration[8.1]
  def change
    remove_column :series, :name_ja, :string
    remove_column :series, :name_en, :string
  end
end