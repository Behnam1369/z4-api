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

ActiveRecord::Schema[7.0].define(version: 2023_04_18_061457) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "center_types", force: :cascade do |t|
    t.integer "first"
    t.integer "last"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "centers", force: :cascade do |t|
    t.integer "code"
    t.bigint "center_type_id", null: false
    t.boolean "active"
    t.string "table"
    t.integer "record"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["center_type_id"], name: "index_centers_on_center_type_id"
  end

  create_table "field_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "field_values", force: :cascade do |t|
    t.string "value"
    t.string "table"
    t.integer "record"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.bigint "field_type_id", null: false
    t.boolean "required"
    t.string "table"
    t.integer "record"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_type_id"], name: "index_fields_on_field_type_id"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "menu_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parent_id"
    t.index ["parent_id"], name: "index_menu_items_on_parent_id"
  end

  create_table "operation_logs", force: :cascade do |t|
    t.datetime "time"
    t.string "old"
    t.string "new"
    t.string "table"
    t.integer "record"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_operation_logs_on_user_id"
  end

  create_table "translations", force: :cascade do |t|
    t.string "english"
    t.string "persian"
    t.string "arabic"
    t.string "spanish"
    t.string "french"
    t.string "turkish"
    t.string "portugess"
    t.string "dutch"
    t.string "russian"
    t.string "italian"
    t.string "swedish"
    t.string "hindi"
    t.string "urdu"
    t.string "chiness"
    t.string "japaness"
    t.string "korean"
    t.string "thai"
    t.string "malay"
    t.string "indonesian"
    t.string "table"
    t.integer "record"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "centers", "center_types"
  add_foreign_key "fields", "field_types"
  add_foreign_key "operation_logs", "users"
end
