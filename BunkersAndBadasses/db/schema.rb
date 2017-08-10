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

ActiveRecord::Schema.define(version: 20170809211500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "character_name"
    t.integer "level"
    t.integer "experience"
    t.integer "health"
    t.integer "action_points"
    t.integer "badass_points"
    t.integer "evasion"
    t.string "character_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "current_health"
  end

  create_table "sirens", force: :cascade do |t|
    t.string "character_name", default: "Maya"
    t.integer "level", default: 1
    t.integer "experience", default: 0
    t.integer "health", default: 100
    t.integer "current_health", default: 100
    t.integer "action_points", default: 12
    t.integer "badass_points", default: 0
    t.integer "evasion", default: 55
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
