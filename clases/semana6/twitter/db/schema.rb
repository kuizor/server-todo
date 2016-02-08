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

ActiveRecord::Schema.define(version: 20160121170608) do

  create_table "follows", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "target_profile_id", limit: 4
    t.integer  "source_profile_id", limit: 4
  end

  add_index "follows", ["source_profile_id"], name: "fk_rails_5e22b9865a", using: :btree
  add_index "follows", ["target_profile_id"], name: "target_profile_fk", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "last_name",  limit: 255
    t.string   "sex",        limit: 255
    t.date     "birthday"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "tweets", force: :cascade do |t|
    t.string   "content",    limit: 255
    t.integer  "profile_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tweets", ["profile_id"], name: "index_tweets_on_profile_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "login",      limit: 255
    t.string   "password",   limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "follows", "profiles", column: "source_profile_id"
  add_foreign_key "follows", "profiles", column: "target_profile_id", name: "target_profile_fk"
  add_foreign_key "profiles", "users"
  add_foreign_key "tweets", "profiles"
end
