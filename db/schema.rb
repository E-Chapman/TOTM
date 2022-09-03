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

ActiveRecord::Schema[7.0].define(version: 2022_09_03_141553) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flows", force: :cascade do |t|
    t.string "name"
    t.string "emoji"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moods", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "emoji"
  end

  create_table "period_day_symptoms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "period_id"
    t.bigint "mood_id", null: false
    t.bigint "physical_symptom_id", null: false
    t.bigint "flow_id"
    t.index ["mood_id"], name: "index_period_day_symptoms_on_mood_id"
    t.index ["period_id"], name: "index_period_day_symptoms_on_period_id"
    t.index ["physical_symptom_id"], name: "index_period_day_symptoms_on_physical_symptom_id"
  end

  create_table "periods", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.date "end_date"
    t.index ["user_id"], name: "index_periods_on_user_id"
  end

  create_table "physical_symptoms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "emoji"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "period_day_symptoms", "moods"
  add_foreign_key "period_day_symptoms", "physical_symptoms"
  add_foreign_key "periods", "users"
end
