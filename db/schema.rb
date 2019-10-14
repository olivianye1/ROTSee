# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_14_224529) do

  create_table "attendances", force: :cascade do |t|
    t.integer "cadetID"
    t.datetime "eventDate"
    t.boolean "attendance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cadets", force: :cascade do |t|
    t.integer "cadetID"
    t.string "lastName"
    t.string "firstName"
    t.string "email"
    t.string "phoneNumber"
    t.string "school"
    t.string "position"
    t.string "course"
    t.integer "gradYear"
    t.string "flight"
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "eventID"
    t.datetime "eventDate"
    t.text "primaryType"
    t.text "subType"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
