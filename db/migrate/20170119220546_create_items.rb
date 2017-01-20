class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :quantity, default: 0
      t.integer :product_id
      t.integer :cart_id
      t.integer :order_id
      t.integer :historical_price
      t.integer :historical_quantity
      t.timestamps null: false
    end
  end
end
