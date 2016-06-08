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

ActiveRecord::Schema.define(version: 20160607165439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.boolean  "open_monday"
    t.boolean  "open_tuesday"
    t.boolean  "open_wednesday"
    t.boolean  "open_thursday"
    t.boolean  "open_friday"
    t.boolean  "open_saturday"
    t.boolean  "open_sunday"
    t.boolean  "trial_monday"
    t.boolean  "trial_tuesday"
    t.boolean  "trial_wednesday"
    t.boolean  "trial_thursday"
    t.boolean  "trial_friday"
    t.boolean  "trial_saturday"
    t.boolean  "trial_sunday"
    t.integer  "trial_capacity"
    t.string   "photo"
    t.string   "address"
    t.string   "city"
    t.date     "period_beginning"
    t.date     "period_ending"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "price"
  end

  create_table "bookings", force: :cascade do |t|
    t.text     "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "trial_day"
  end

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "owner"
    t.string   "photo"
    t.string   "company_name"
    t.string   "phone_number"
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "token"
    t.datetime "token_expiry"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
