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

ActiveRecord::Schema.define(version: 20160120151810) do

  create_table "bill_details", force: :cascade do |t|
    t.integer  "quantity",    limit: 4
    t.integer  "total_price", limit: 4
    t.integer  "bill_id",     limit: 4
    t.integer  "product_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bill_details", ["bill_id"], name: "index_bill_details_on_bill_id", using: :btree
  add_index "bill_details", ["product_id"], name: "index_bill_details_on_product_id", using: :btree

  create_table "bills", force: :cascade do |t|
    t.string   "date",       limit: 255
    t.integer  "subtotal",   limit: 4
    t.integer  "tax",        limit: 4
    t.integer  "total",      limit: 4
    t.integer  "client_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "bills", ["client_id"], name: "index_bills_on_client_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.integer  "phone",      limit: 8
    t.string   "email",      limit: 255
    t.string   "rif",        limit: 255
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "price",      limit: 4
    t.integer  "stock",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "bill_details", "bills"
  add_foreign_key "bill_details", "products"
  add_foreign_key "bills", "clients"
end
