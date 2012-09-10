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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120910180018) do

  create_table "items", :force => true do |t|
    t.string   "sku"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "quantity"
    t.decimal  "weight"
    t.integer  "exp_quantity"
    t.string   "originator"
    t.integer  "originator_id"
    t.boolean  "available"
    t.string   "image_file_name"
    t.datetime "image_updated_at"
    t.string   "image_originator_url"
    t.string   "vendor"
    t.decimal  "price"
    t.boolean  "media_mail"
    t.boolean  "packaging"
    t.decimal  "length"
    t.decimal  "width"
    t.decimal  "height"
  end

  create_table "order_items", :force => true do |t|
    t.integer  "order_id"
    t.string   "sku"
    t.string   "description"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "unshippable"
    t.string   "originator_id"
    t.integer  "item_id"
    t.boolean  "available"
    t.boolean  "picked"
    t.boolean  "packed"
    t.boolean  "packaging"
  end

  create_table "orders", :force => true do |t|
    t.string   "order_orig"
    t.string   "shipping_company"
    t.string   "shipping_address_1"
    t.string   "shipping_address_2"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_zip"
    t.string   "shipping_country"
    t.string   "shipping_phone"
    t.string   "email"
    t.string   "ship_method"
    t.string   "ship_actual_cost"
    t.string   "shipped_on"
    t.string   "tracking"
    t.text     "ship_notes"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "shipping_name"
    t.string   "req_ship_method_code"
    t.string   "req_ship_method_price"
    t.boolean  "tracking_sent"
    t.boolean  "originator_notified"
    t.string   "originator"
    t.integer  "originator_id"
    t.integer  "status"
    t.decimal  "ship_3rdparty_cost"
    t.text     "public_note"
    t.boolean  "gift"
    t.boolean  "billed"
    t.string   "ship_3rdparty_account"
    t.string   "ship_3rdparty_zip"
    t.string   "ship_3rdparty_country"
  end

end
