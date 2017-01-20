class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_desc1
      t.text :product_desc2
      t.decimal :price
      t.boolean :active, default: true
      t.integer :brand_id
      t.text :image
      t.timestamps null: false
    end
  end
end
