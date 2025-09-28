# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_09_28_041730) do
  create_table "activities", force: :cascade do |t|
    t.string "ActivityName"
    t.text "Description"
    t.integer "ActivityType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activity_events", force: :cascade do |t|
    t.integer "ActivyID"
    t.datetime "due_date"
    t.boolean "is_completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "activity_id", null: false
    t.index ["activity_id"], name: "index_activity_events_on_activity_id"
    t.index ["user_id"], name: "index_activity_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activity_events", "activities"
  add_foreign_key "activity_events", "users"
end
