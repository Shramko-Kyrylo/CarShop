class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      
      t.string :brand
      t.string :title
      t.string :img
      t.text :description
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
