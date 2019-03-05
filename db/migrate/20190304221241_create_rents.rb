class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.integer :car_id
      t.string :pickup
      t.string :dropoff
      t.integer :duration , default:1
      t.integer :fine
      t.integer :cost

      t.timestamps
    end
  end
end
