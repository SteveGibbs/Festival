# == Schema Information
#
# Table name: items
#
#  id                  :integer          not null, primary key
#  quantity            :integer          default("0")
#  product_id          :integer
#  cart_id             :integer
#  order_id            :integer
#  historical_price    :integer
#  historical_quantity :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Item < ActiveRecord::Base
    belongs_to :product
    belongs_to :cart
    belongs_to :order

    def subtotal
      self.product.price * self.quantity
    end
    
end
