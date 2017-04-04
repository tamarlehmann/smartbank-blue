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

ActiveRecord::Schema.define(version: 20170404142722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "transaction_id"
    t.float    "target"
    t.index ["transaction_id"], name: "index_categories_on_transaction_id", using: :btree
  end

  create_table "transactions", force: :cascade do |t|
    t.date    "date"
    t.float   "amount"
    t.string  "vendor"
    t.string  "trans_type"
    t.integer "category_id"
    t.index ["category_id"], name: "index_transactions_on_category_id", using: :btree
  end

  add_foreign_key "categories", "transactions"
  add_foreign_key "transactions", "categories"
end
