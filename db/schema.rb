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

ActiveRecord::Schema.define(version: 20150814174223) do

  create_table "academics", force: :cascade do |t|
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "course"
  end

  create_table "campus", force: :cascade do |t|
    t.string   "type"
    t.string   "feature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "province_id"
  end

  add_index "cities", ["province_id"], name: "index_cities_on_province_id"

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recreations", force: :cascade do |t|
    t.string   "activity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "recreation_type"
  end

  create_table "school_recreations", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "recreation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "school_recreations", ["recreation_id"], name: "index_school_recreations_on_recreation_id"
  add_index "school_recreations", ["school_id"], name: "index_school_recreations_on_school_id"

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "postal_code"
    t.string   "website_url"
    t.string   "contact_email"
    t.text     "description"
    t.integer  "girls_boarding"
    t.integer  "girls_day"
    t.integer  "boys_boarding"
    t.integer  "boys_day"
    t.integer  "campus_size"
    t.integer  "year_founded"
    t.integer  "average_class_size"
    t.integer  "student_teacher_ratio"
    t.boolean  "dress_code"
    t.string   "student_body"
    t.float    "seven_day_tuition"
    t.float    "five_day_tuition"
    t.string   "boarding_grades"
    t.string   "day_grades"
    t.float    "day_tuition"
    t.string   "accreditations"
    t.boolean  "advanced_placement"
    t.boolean  "international_bac"
    t.boolean  "payment_plans"
    t.boolean  "need_based_aid"
    t.boolean  "merit_scholarships"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
