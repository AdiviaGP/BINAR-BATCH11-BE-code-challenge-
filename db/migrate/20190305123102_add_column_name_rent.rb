class AddColumnNameRent < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :tenantName, :string
  end
end
