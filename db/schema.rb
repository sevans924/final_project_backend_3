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

ActiveRecord::Schema.define(version: 2019_06_26_185404) do

  create_table "check_ins", force: :cascade do |t|
    t.integer "student_id"
    t.integer "counselor_id"
    t.boolean "plan"
    t.text "goal"
    t.text "signal"
    t.text "strategy"
    t.text "signal_reflection"
    t.text "emotion"
    t.text "event"
    t.text "reflection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counselor_id"], name: "index_check_ins_on_counselor_id"
    t.index ["student_id"], name: "index_check_ins_on_student_id"
  end

  create_table "counselors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_parents", force: :cascade do |t|
    t.integer "student_id"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_student_parents_on_parent_id"
    t.index ["student_id"], name: "index_student_parents_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.integer "counselor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counselor_id"], name: "index_students_on_counselor_id"
  end

end
