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

ActiveRecord::Schema.define(version: 20161105032850) do

  create_table "images", force: :cascade do |t|
    t.text     "image",      limit: 65535
    t.text     "title",      limit: 65535
    t.integer  "matome_id",  limit: 4
    t.integer  "order",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "matome_id",   limit: 4
    t.integer  "link_id",     limit: 4
    t.integer  "image_id",    limit: 4
    t.integer  "quote_id",    limit: 4
    t.integer  "text_id",     limit: 4
    t.integer  "subtitle_id", limit: 4
    t.integer  "movie_id",    limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "links", force: :cascade do |t|
    t.text     "url",        limit: 65535
    t.integer  "matome_id",  limit: 4
    t.integer  "order",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "matomes", force: :cascade do |t|
    t.text     "title",       limit: 65535
    t.text     "explanation", limit: 65535
    t.text     "image",       limit: 65535
    t.text     "content",     limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "movies", force: :cascade do |t|
    t.text     "url",        limit: 65535
    t.integer  "matome_id",  limit: 4
    t.integer  "order",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.text     "text",           limit: 65535
    t.text     "source_url",     limit: 65535
    t.text     "source_comment", limit: 65535
    t.text     "source",         limit: 65535
    t.integer  "matome_id",      limit: 4
    t.integer  "order",          limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "subtitles", force: :cascade do |t|
    t.text     "title",      limit: 65535
    t.integer  "matome_id",  limit: 4
    t.integer  "order",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "texts", force: :cascade do |t|
    t.text     "text",       limit: 65535
    t.integer  "matome_id",  limit: 4
    t.integer  "order",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name",                   limit: 255
    t.text     "profile",                limit: 65535
    t.text     "homepage",               limit: 65535
    t.string   "uid",                    limit: 255
    t.string   "provider",               limit: 255
    t.string   "avatar",                 limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
