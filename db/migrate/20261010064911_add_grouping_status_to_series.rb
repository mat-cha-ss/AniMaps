class AddGroupingStatusToSeries < ActiveRecord::Migration[8.1]
  def change
    add_column :series, :grouping_status, :string, default: "confirmed", null: false
  end
end
