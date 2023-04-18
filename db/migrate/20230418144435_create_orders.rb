class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :brand
      t.string :title
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
