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
end
