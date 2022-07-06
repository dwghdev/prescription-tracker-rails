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

ActiveRecord::Schema.define(version: 2022_07_05_141809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "age"
    t.string "gender"
    t.string "phone_no"
    t.string "email"
    t.string "license_no"
    t.bigint "specialization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialization_id"], name: "index_doctors_on_specialization_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.decimal "price", precision: 5, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prescription_medicines", force: :cascade do |t|
    t.bigint "prescription_id", null: false
    t.bigint "medicine_id", null: false
    t.integer "discount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medicine_id"], name: "index_prescription_medicines_on_medicine_id"
    t.index ["prescription_id"], name: "index_prescription_medicines_on_prescription_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.date "date"
    t.string "content"
    t.decimal "total_cost", precision: 5, scale: 2
    t.bigint "doctor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "doctors", "specializations"
  add_foreign_key "prescription_medicines", "medicines"
  add_foreign_key "prescription_medicines", "prescriptions"
  add_foreign_key "prescriptions", "doctors"
end
