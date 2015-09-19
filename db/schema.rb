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

ActiveRecord::Schema.define(version: 20150919202303) do

  create_table "academic_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "academics", force: :cascade do |t|
    t.string   "subject"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "course"
    t.integer  "academic_type_id"
  end

  add_index "academics", ["academic_type_id"], name: "index_academics_on_academic_type_id"

  create_table "campu_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campus", force: :cascade do |t|
    t.string   "feature"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "campu_type"
    t.integer  "campus_type_id"
    t.integer  "campu_type_id"
  end

  add_index "campus", ["campu_type_id"], name: "index_campus_on_campu_type_id"
  add_index "campus", ["campus_type_id"], name: "index_campus_on_campus_type_id"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "province_id"
  end

  add_index "cities", ["province_id"], name: "index_cities_on_province_id"

  create_table "installs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "installs", ["email"], name: "index_installs_on_email", unique: true
  add_index "installs", ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recreation_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recreations", force: :cascade do |t|
    t.string   "activity"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "recreation_type"
    t.integer  "recreation_type_id"
  end

  add_index "recreations", ["recreation_type_id"], name: "index_recreations_on_recreation_type_id"

  create_table "school_academics", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "academic_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "school_academics", ["academic_id"], name: "index_school_academics_on_academic_id"
  add_index "school_academics", ["school_id"], name: "index_school_academics_on_school_id"

  create_table "school_campus", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "campu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "school_campus", ["campu_id"], name: "index_school_campus_on_campu_id"
  add_index "school_campus", ["school_id"], name: "index_school_campus_on_school_id"

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
    t.integer  "girls_boarding",          default: 0
    t.integer  "girls_day",               default: 0
    t.integer  "boys_boarding",           default: 0
    t.integer  "boys_day",                default: 0
    t.integer  "campus_size",             default: 0
    t.integer  "year_founded"
    t.integer  "average_class_size",      default: 0
    t.integer  "student_teacher_ratio",   default: 0
    t.boolean  "dress_code"
    t.string   "student_body"
    t.float    "seven_day_tuition",       default: 0.0
    t.float    "five_day_tuition",        default: 0.0
    t.string   "boarding_grades"
    t.string   "day_grades"
    t.float    "day_tuition",             default: 0.0
    t.string   "accreditations"
    t.boolean  "advanced_placement"
    t.boolean  "international_bac"
    t.boolean  "payment_plans"
    t.boolean  "need_based_aid"
    t.boolean  "merit_scholarships"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "city_id"
    t.integer  "school_id"
    t.integer  "student_body_size"
    t.string   "featured_file_name"
    t.string   "featured_content_type"
    t.integer  "featured_file_size"
    t.datetime "featured_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "religion"
    t.boolean  "pre_grade_nine_boarding"
    t.string   "featured_image_url"
    t.string   "logo_image_url"
    t.string   "video_url"
    t.text     "summer_programs"
    t.boolean  "esl"
    t.string   "contact_name"
  end

  add_index "schools", ["city_id"], name: "index_schools_on_city_id"
  add_index "schools", ["school_id"], name: "index_schools_on_school_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
