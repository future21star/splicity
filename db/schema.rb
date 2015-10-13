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

ActiveRecord::Schema.define(version: 20151012022552) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.string   "start_date"
    t.string   "end_date"
    t.integer  "spots"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "category"
    t.integer  "temp_order_id"
    t.string   "start_hour"
    t.string   "end_hour"
    t.string   "start_min"
    t.string   "end_min"
    t.string   "start_am_pm"
    t.string   "end_am_pm"
    t.string   "schedule_options"
    t.datetime "starts_at"
    t.datetime "ends_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kid_orders", force: true do |t|
    t.integer "kid_id"
    t.integer "order_id"
  end

  create_table "kid_temp_orders", force: true do |t|
    t.integer "kid_id"
    t.integer "temp_order_id"
  end

  create_table "kids", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "activity_id"
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.integer  "kid_id"
  end

  create_table "payments", force: true do |t|
    t.integer  "amount_recieved"
    t.integer  "seller_id"
    t.integer  "splickitykids_amount"
    t.integer  "seller_amount"
    t.integer  "order_id"
    t.integer  "temp_order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temp_orders", force: true do |t|
    t.integer  "cart_id"
    t.integer  "quantity"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "amount"
    t.integer  "total_amount"
    t.integer  "order_id"
    t.integer  "seller_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "timezone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
