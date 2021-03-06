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

ActiveRecord::Schema.define(version: 2019_11_07_084708) do

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "catch_phrase"
    t.string "image_url"
    t.integer "spooky_house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spooky_house_id"], name: "index_monsters_on_spooky_house_id"
  end

  create_table "spooky_houses", force: :cascade do |t|
    t.string "name"
    t.string "banner_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traits", force: :cascade do |t|
    t.integer "monster_id"
    t.integer "weakness_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_traits_on_monster_id"
    t.index ["weakness_id"], name: "index_traits_on_weakness_id"
  end

  create_table "weaknesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
