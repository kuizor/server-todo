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

ActiveRecord::Schema.define(version: 20160119135442) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "address"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "phone",      limit: 8
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_details", ["order_id"], name: "index_order_details_on_order_id"
  add_index "order_details", ["product_id"], name: "index_order_details_on_product_id"

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

  create_table "payments", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.integer  "subtotal"
    t.integer  "iva"
    t.integer  "total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "payments", ["customer_id"], name: "index_payments_on_customer_id"
  add_index "payments", ["order_id"], name: "index_payments_on_order_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
