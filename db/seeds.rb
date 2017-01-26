# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.destroy_all
p1 = Product.create product_name: 'VIP Area', price: 600, product_desc1: 'Full access to VIP Area and Lounge'
p2 = Product.create product_name: 'Premium', price: 250, product_desc1: 'Premium seating and priority access'
p3 = Product.create product_name: 'General Admission', price: 100, product_desc1: 'General seating'
p4 = Product.create product_name: 'Early Bird', price: 80, product_desc1: 'General seating'
