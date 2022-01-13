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

ActiveRecord::Schema.define(version: 2022_01_13_002851) do

  create_table "enrollments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.decimal "total_value", precision: 10
    t.integer "max_payment"
    t.integer "payment_due_date"
    t.string "course_name"
    t.bigint "institution_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["institution_id"], name: "index_enrollments_on_institution_id"
    t.index ["student_id"], name: "index_enrollments_on_student_id"
  end

  create_table "institutions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "cnpj"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.decimal "value", precision: 10
    t.date "due_date"
    t.bigint "enrollment_id", null: false
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enrollment_id"], name: "index_payments_on_enrollment_id"
  end

  create_table "students", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.date "birth"
    t.integer "phone"
    t.string "gender"
    t.string "payment_method"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "enrollments", "institutions"
  add_foreign_key "enrollments", "students"
  add_foreign_key "payments", "enrollments"
end
