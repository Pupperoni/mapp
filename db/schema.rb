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

ActiveRecord::Schema.define(version: 20171112154247) do

  create_table "aircrafts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "aircraft_registration"
    t.string "craft_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "airport_type"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_airports_on_location_id"
  end

  create_table "atms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "atm_type"
    t.bigint "locations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locations_id"], name: "index_atms_on_locations_id"
  end

  create_table "contractors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "cname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "happened_ats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "situation_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_happened_ats_on_location_id"
    t.index ["situation_id"], name: "index_happened_ats_on_situation_id"
  end

  create_table "happened_ons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "accident_date"
    t.bigint "situation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["situation_id"], name: "index_happened_ons_on_situation_id"
  end

  create_table "has_accidents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "aircraft_id"
    t.bigint "situation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_has_accidents_on_aircraft_id"
    t.index ["situation_id"], name: "index_has_accidents_on_situation_id"
  end

  create_table "has_casualties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "no_of_casualties"
    t.bigint "situation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["situation_id"], name: "index_has_casualties_on_situation_id"
  end

  create_table "implementing_offices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "office_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "region"
    t.string "province"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float "pcost", limit: 24
    t.string "pstatus"
    t.string "pdesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "situations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "accident_type"
    t.string "report_type"
    t.string "status"
    t.bigint "airport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airport_id"], name: "index_situations_on_airport_id"
  end

  add_foreign_key "airports", "locations"
  add_foreign_key "atms", "locations", column: "locations_id"
  add_foreign_key "happened_ats", "locations"
  add_foreign_key "happened_ats", "situations"
  add_foreign_key "happened_ons", "situations"
  add_foreign_key "has_accidents", "aircrafts"
  add_foreign_key "has_accidents", "situations"
  add_foreign_key "has_casualties", "situations"
  add_foreign_key "situations", "airports"
end
