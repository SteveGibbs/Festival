class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.decimal :tax, default: 0.1
      t.decimal :shipping, default: 0
      t.timestamps null: false
    end
  end
end
