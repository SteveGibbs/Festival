# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  tax        :decimal(, )      default("0.1")
#  shipping   :decimal(, )      default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base
  has_many :items, -> { order 'created_at asc'}
    has_many :products, through: :items


    # LOGIC
  def subtotal
    sum = 0

    items.each do |item|
      sum += item.subtotal
    end

    sum
  end

  def total
    subtotal + (subtotal * tax) + shipping
  end

  def total_quantity
    sum = 0
    items.each do |item|
      sum += item.quantity
    end
    sum
  end

end
