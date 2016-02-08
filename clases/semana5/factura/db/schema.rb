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

ActiveRecord::Schema.define(version: 20160114200348) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.integer  "telefono",   limit: 4
    t.string   "direccion",  limit: 255
    t.string   "rif",        limit: 255
    t.string   "tipo",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "facts", force: :cascade do |t|
    t.float    "subtotal",   limit: 24
    t.float    "iva",        limit: 24
    t.float    "total",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.float    "precio",     limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pibotes", force: :cascade do |t|
    t.integer  "fact_id",    limit: 4
    t.integer  "item_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "pibotes", ["fact_id"], name: "index_pibotes_on_fact_id", using: :btree
  add_index "pibotes", ["item_id"], name: "index_pibotes_on_item_id", using: :btree

  add_foreign_key "pibotes", "facts"
  add_foreign_key "pibotes", "items"
end
