# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  product_name  :string
#  product_desc1 :text
#  product_desc2 :text
#  price         :decimal(, )
#  active        :boolean          default("true")
#  brand_id      :integer
#  image         :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Product < ActiveRecord::Base
end
