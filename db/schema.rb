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

ActiveRecord::Schema.define(version: 20140502024329) do

  create_table "games", force: true do |t|
    t.string   "name"
    t.integer  "num_in_stock"
    t.string   "genre"
    t.string   "rating"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "on_hand"
    t.string   "image"
    t.string   "system"
  end

  create_table "lists", force: true do |t|
    t.integer "game_id"
    t.integer "user_id"
    t.boolean "gone_out"
    t.date    "time"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "cc_number"
    t.string   "cc_type"
    t.integer  "cc_security"
  end

end
