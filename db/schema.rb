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

ActiveRecord::Schema.define(version: 20150402225755) do

  create_table "areas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "pid",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "attachments", force: :cascade do |t|
    t.string   "file_name",      limit: 255
    t.integer  "container_id",   limit: 4
    t.string   "container_type", limit: 255
    t.string   "disk_name",      limit: 255
    t.string   "disk_directory", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "order_id",       limit: 4
    t.integer  "product_id",     limit: 4
    t.integer  "product_number", limit: 4
    t.float    "price",          limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number", limit: 255
    t.integer  "user_id",      limit: 4
    t.string   "state",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "shop_id",      limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "shop_id",     limit: 4
    t.float    "price",       limit: 24
    t.string   "discription", limit: 255
    t.integer  "author_id",   limit: 4
    t.string   "state",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "area_id",       limit: 4
    t.integer  "user_id",       limit: 4
    t.string   "mobile",        limit: 255
    t.string   "phone",         limit: 255
    t.string   "address",       limit: 255
    t.string   "state",         limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "star",          limit: 4
    t.float    "send_expenses", limit: 24
    t.integer  "send_up",       limit: 4
    t.string   "send_time",     limit: 255
    t.string   "discription",   limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "login_name", limit: 255
    t.string   "password",   limit: 255
    t.string   "nick_name",  limit: 255
    t.string   "mobile",     limit: 255
    t.string   "email",      limit: 255
    t.integer  "area_id",    limit: 4
    t.string   "user_type",  limit: 255
    t.string   "address",    limit: 255
    t.string   "state",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
