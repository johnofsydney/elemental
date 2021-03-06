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

ActiveRecord::Schema.define(version: 20180122121608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries_scientists", force: :cascade do |t|
    t.integer "country_id"
    t.integer "scientist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.integer "protons"
    t.text "electrons"
    t.date "described_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year"
    t.text "position"
    t.text "symbol"
    t.text "family"
    t.text "wiki_link"
  end

  create_table "elements_scientists", id: false, force: :cascade do |t|
    t.integer "element_id"
    t.integer "scientist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.integer "country_id"
    t.integer "element_id"
    t.integer "quantity"
  end

  create_table "scientists", force: :cascade do |t|
    t.text "name"
    t.date "born"
    t.date "died"
    t.text "city"
    t.text "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id"
  end

end
