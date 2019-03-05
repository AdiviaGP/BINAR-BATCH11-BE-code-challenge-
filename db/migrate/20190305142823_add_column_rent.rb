class AddColumnRent < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :pickup, :date
    add_column :rents, :dropoff, :date
  end
end
