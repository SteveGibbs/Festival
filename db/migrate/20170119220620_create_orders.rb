class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address1
      t.string :status, default: "in progress"
      t.timestamps null: false
    end
  end
end
