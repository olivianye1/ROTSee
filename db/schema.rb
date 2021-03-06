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

ActiveRecord::Schema.define(version: 2019_12_11_195500) do

  create_table "articles", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tag"
  end

  create_table "attendances", force: :cascade do |t|
    t.integer "attended"
    t.integer "cadet_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cadet_id"], name: "index_attendances_on_cadet_id"
    t.index ["event_id"], name: "index_attendances_on_event_id"
  end

  create_table "cadets", force: :cascade do |t|
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
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "approved", default: false, null: false
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.index ["approved"], name: "index_cadets_on_approved"
  end

  create_table "events", force: :cascade do |t|
    t.date "eventDate"
    t.string "primaryType"
    t.string "subType"
    t.string "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.date "date_created"
    t.date "date_due"
    t.string "description"
    t.integer "cadet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "completed"
    t.index ["cadet_id"], name: "index_tasks_on_cadet_id"
  end

  add_foreign_key "attendances", "cadets"
  add_foreign_key "attendances", "events"
  add_foreign_key "tasks", "cadets"
end
