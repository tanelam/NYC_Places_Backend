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

ActiveRecord::Schema.define(version: 20180413012552) do

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "main_photo"
    t.string "description"
    t.string "card_photo"
    t.string "poi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_2"
    t.string "video"
    t.string "long_description"
    t.string "longitud"
    t.string "latitud"
    t.string "address"
    t.string "zip"
  end

  create_table "user_places", force: :cascade do |t|
    t.integer "user_id"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
