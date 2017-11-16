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

ActiveRecord::Schema.define(version: 20171116085954) do

  create_table "aircrafts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "aircraft_registration"
    t.string "craft_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airline_operators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "operator_name"
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
    t.integer "amount"
    t.index ["locations_id"], name: "index_atms_on_locations_id"
  end

  create_table "built_ins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "projects_id"
    t.bigint "locations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locations_id"], name: "index_built_ins_on_locations_id"
    t.index ["projects_id"], name: "index_built_ins_on_projects_id"
  end

  create_table "completed_bies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "project_end_date"
    t.bigint "projects_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projects_id"], name: "index_completed_bies_on_projects_id"
  end

  create_table "consists_ofs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "airports_id"
    t.bigint "airline_operators_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airline_operators_id"], name: "index_consists_ofs_on_airline_operators_id"
    t.index ["airports_id"], name: "index_consists_ofs_on_airports_id"
  end

  create_table "contractors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "cname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handled_bies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "projects_id"
    t.bigint "contractors_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractors_id"], name: "index_handled_bies_on_contractors_id"
    t.index ["projects_id"], name: "index_handled_bies_on_projects_id"
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

  create_table "implemented_bies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "projects_id"
    t.bigint "implementing_offices_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["implementing_offices_id"], name: "index_implemented_bies_on_implementing_offices_id"
    t.index ["projects_id"], name: "index_implemented_bies_on_projects_id"
  end

  create_table "implementing_offices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "office_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "located_ins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "airports_id"
    t.bigint "locations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airports_id"], name: "index_located_ins_on_airports_id"
    t.index ["locations_id"], name: "index_located_ins_on_locations_id"
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
  end

  create_table "operates_ins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "airline_operators_id"
    t.bigint "locations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airline_operators_id"], name: "index_operates_ins_on_airline_operators_id"
    t.index ["locations_id"], name: "index_operates_ins_on_locations_id"
  end

  create_table "progress_reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "report_date"
    t.string "report_type"
    t.integer "report_count"
    t.bigint "airline_operators_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airline_operators_id"], name: "index_progress_reports_on_airline_operators_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "started_ons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "project_start_date"
    t.bigint "projects_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projects_id"], name: "index_started_ons_on_projects_id"
  end

  add_foreign_key "airports", "locations"
  add_foreign_key "atms", "locations", column: "locations_id"
  add_foreign_key "built_ins", "locations", column: "locations_id"
  add_foreign_key "built_ins", "projects", column: "projects_id"
  add_foreign_key "completed_bies", "projects", column: "projects_id"
  add_foreign_key "consists_ofs", "airline_operators", column: "airline_operators_id"
  add_foreign_key "consists_ofs", "airports", column: "airports_id"
  add_foreign_key "handled_bies", "contractors", column: "contractors_id"
  add_foreign_key "handled_bies", "projects", column: "projects_id"
  add_foreign_key "happened_ats", "locations"
  add_foreign_key "happened_ats", "situations"
  add_foreign_key "happened_ons", "situations"
  add_foreign_key "has_accidents", "aircrafts"
  add_foreign_key "has_accidents", "situations"
  add_foreign_key "has_casualties", "situations"
  add_foreign_key "implemented_bies", "implementing_offices", column: "implementing_offices_id"
  add_foreign_key "implemented_bies", "projects", column: "projects_id"
  add_foreign_key "located_ins", "airports", column: "airports_id"
  add_foreign_key "located_ins", "locations", column: "locations_id"
  add_foreign_key "operates_ins", "airline_operators", column: "airline_operators_id"
  add_foreign_key "operates_ins", "locations", column: "locations_id"
  add_foreign_key "progress_reports", "airline_operators", column: "airline_operators_id"
  add_foreign_key "started_ons", "projects", column: "projects_id"
end
