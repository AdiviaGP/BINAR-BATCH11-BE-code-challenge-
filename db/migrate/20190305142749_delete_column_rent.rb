class DeleteColumnRent < ActiveRecord::Migration[5.2]
  def change
    remove_column :rents, :pickup
    remove_column :rents, :dropoff
  end
end
