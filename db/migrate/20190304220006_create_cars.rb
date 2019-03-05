class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :category_id
      t.integer :brand_id
      t.integer :price
      t.string :image
      t.integer :stock , default: 0
      t.text :description

      t.timestamps
    end
  end
end
