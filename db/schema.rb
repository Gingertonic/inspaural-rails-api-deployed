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

ActiveRecord::Schema.define(version: 2018_10_24_203327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ambiences", force: :cascade do |t|
    t.string "name"
    t.string "audioUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imageUrl"
  end

  create_table "inspaurals", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "ambience_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quote1_vol"
    t.integer "quote2_vol"
    t.integer "quote3_vol"
    t.integer "quote4_vol"
    t.integer "ambience_vol"
  end

  create_table "inspaurals_quotes", id: false, force: :cascade do |t|
    t.bigint "inspaural_id"
    t.bigint "quote_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inspaural_id"], name: "index_inspaurals_quotes_on_inspaural_id"
    t.index ["quote_id"], name: "index_inspaurals_quotes_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "author"
    t.string "text"
    t.string "audioUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imageUrl"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "uid"
    t.string "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
