# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  name       :string
#  address1   :text
#  status     :string           default("in progress")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  has_many :items, dependent: :destroy

  def subtotal
        sum = 0

        items.each do |item|
          sum += item.subtotal
        end

        sum
      end
end
