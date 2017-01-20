# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170119220620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.decimal  "tax",        default: 0.1
    t.decimal  "shipping",   default: 0.0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "quantity",            default: 0
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "order_id"
    t.integer  "historical_price"
    t.integer  "historical_quantity"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.text     "address1"
    t.string   "status",     default: "in progress"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.text     "product_desc1"
    t.text     "product_desc2"
    t.decimal  "price"
    t.boolean  "active",        default: true
    t.integer  "brand_id"
    t.text     "image"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
