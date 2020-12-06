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

ActiveRecord::Schema.define(version: 2020_12_06_213050) do

  create_table "accounts", force: :cascade do |t|
    t.float "qtd"
    t.date "data_conta"
    t.string "comentario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "accounttype_id", null: false
    t.index ["accounttype_id"], name: "index_accounts_on_accounttype_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "accounttypes", force: :cascade do |t|
    t.string "tipo_conta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "nome"
    t.float "quantidade"
    t.date "data"
    t.string "comentario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "expensetype_id", null: false
    t.index ["expensetype_id"], name: "index_expenses_on_expensetype_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "expensetypes", force: :cascade do |t|
    t.string "tipo_receita"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "accounttypes"
  add_foreign_key "accounts", "users"
  add_foreign_key "expenses", "expensetypes"
  add_foreign_key "expenses", "users"
end
