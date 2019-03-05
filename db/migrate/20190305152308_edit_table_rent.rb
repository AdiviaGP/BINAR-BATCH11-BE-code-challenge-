class EditTableRent < ActiveRecord::Migration[5.2]
  def change
    change_column_null :rents, :dropoff, true
    change_column_null :rents, :cost, true
    change_column_null :rents, :fine, true

  end
end
