class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :custfirstname
      t.string :custlastname
      t.string :name
      t.string :category
      t.string :currency
      t.integer :price
      t.integer :discount
      t.integer :payment

      t.timestamps
    end
  end
end
