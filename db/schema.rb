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

ActiveRecord::Schema[7.0].define(version: 2023_05_26_091707) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "manager"
    t.string "via"
    t.string "civico"
    t.string "cap"
    t.string "citta"
    t.string "provincia"
    t.string "latitude"
    t.string "longitude"
    t.string "dep_map"
    t.string "dep_event"
    t.text "description"
    t.integer "floors"
    t.integer "number_of_spaces"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_departments_on_user_id"
  end

  create_table "favourite_spaces", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "department_id", null: false
    t.bigint "space_id", null: false
    t.string "email"
    t.string "dep_name"
    t.string "typology"
    t.string "space_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_favourite_spaces_on_department_id"
    t.index ["space_id"], name: "index_favourite_spaces_on_space_id"
    t.index ["user_id"], name: "index_favourite_spaces_on_user_id"
  end

  create_table "quick_reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "department_id", null: false
    t.bigint "space_id", null: false
    t.string "email"
    t.string "dep_name"
    t.string "typology"
    t.string "space_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_quick_reservations_on_department_id"
    t.index ["space_id"], name: "index_quick_reservations_on_space_id"
    t.index ["user_id"], name: "index_quick_reservations_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "department_id", null: false
    t.bigint "space_id", null: false
    t.bigint "seat_id", null: false
    t.string "email"
    t.string "dep_name"
    t.string "typology"
    t.string "space_name"
    t.integer "floor"
    t.integer "seat_num"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "state"
    t.string "is_sync"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_reservations_on_department_id"
    t.index ["seat_id"], name: "index_reservations_on_seat_id"
    t.index ["space_id"], name: "index_reservations_on_space_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "seats", force: :cascade do |t|
    t.bigint "space_id", null: false
    t.string "dep_name"
    t.string "typology"
    t.string "space_name"
    t.integer "position"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_seats_on_space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.bigint "department_id", null: false
    t.string "dep_name"
    t.string "typology"
    t.string "name"
    t.text "description"
    t.integer "floor"
    t.integer "number_of_seats"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_spaces_on_department_id"
  end

  create_table "temp_deps", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "manager"
    t.string "via"
    t.string "civico"
    t.string "cap"
    t.string "citta"
    t.string "provincia"
    t.string "lat"
    t.string "lon"
    t.text "description"
    t.integer "floors"
    t.integer "number_of_spaces"
    t.string "dep_map"
    t.string "dep_event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_temp_deps_on_user_id"
  end

  create_table "temp_sps", force: :cascade do |t|
    t.bigint "temp_dep_id", null: false
    t.string "dep_name"
    t.string "typology"
    t.string "name"
    t.text "description"
    t.integer "floor"
    t.integer "number_of_seats"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["temp_dep_id"], name: "index_temp_sps_on_temp_dep_id"
  end

  create_table "temp_week_days", force: :cascade do |t|
    t.bigint "temp_dep_id", null: false
    t.string "dep_name"
    t.string "day"
    t.string "state"
    t.datetime "apertura"
    t.datetime "chiusura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["temp_dep_id"], name: "index_temp_week_days_on_temp_dep_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "locking_reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "access_token"
    t.integer "expires_at"
    t.string "refresh_token"
    t.string "role"
    t.string "requested_manager"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "week_days", force: :cascade do |t|
    t.bigint "department_id", null: false
    t.string "dep_name"
    t.string "day"
    t.string "state"
    t.datetime "apertura"
    t.datetime "chiusura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_week_days_on_department_id"
  end

  add_foreign_key "departments", "users"
  add_foreign_key "favourite_spaces", "departments"
  add_foreign_key "favourite_spaces", "spaces"
  add_foreign_key "favourite_spaces", "users"
  add_foreign_key "quick_reservations", "departments"
  add_foreign_key "quick_reservations", "spaces"
  add_foreign_key "quick_reservations", "users"
  add_foreign_key "reservations", "departments"
  add_foreign_key "reservations", "seats"
  add_foreign_key "reservations", "spaces"
  add_foreign_key "reservations", "users"
  add_foreign_key "seats", "spaces"
  add_foreign_key "spaces", "departments"
  add_foreign_key "temp_deps", "users"
  add_foreign_key "temp_sps", "temp_deps"
  add_foreign_key "temp_week_days", "temp_deps"
  add_foreign_key "week_days", "departments"
end
