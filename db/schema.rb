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

ActiveRecord::Schema.define(version: 20151215151459) do

  create_table "comments", force: :cascade do |t|
    t.text     "body",         limit: 65535
    t.integer  "user_id",      limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "furniture_id", limit: 4
  end

  create_table "furnitures", force: :cascade do |t|
    t.integer  "shop_id",             limit: 4
    t.string   "title",               limit: 255
    t.text     "description",         limit: 65535
    t.string   "image",               limit: 255
    t.decimal  "price",                             precision: 10
    t.integer  "stock",               limit: 4
    t.string   "category",            limit: 255
    t.string   "delivery",            limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image",        limit: 255
    t.integer  "furniture_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name",                          limit: 255
    t.string   "location",                      limit: 255
    t.string   "contact_info",                  limit: 255
    t.string   "age",                           limit: 255
    t.string   "payment_mode",                  limit: 255
    t.integer  "user_id",                       limit: 4
    t.text     "description",                   limit: 65535
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "avatar_file_name",              limit: 255
    t.string   "avatar_content_type",           limit: 255
    t.integer  "avatar_file_size",              limit: 4
    t.datetime "avatar_updated_at"
    t.string   "background_image_file_name",    limit: 255
    t.string   "background_image_content_type", limit: 255
    t.integer  "background_image_file_size",    limit: 4
    t.datetime "background_image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email_address",          limit: 255
    t.string   "password_digest",        limit: 255
    t.string   "background_image",       limit: 255
    t.string   "gender",                 limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
