# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150513215712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consignments", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "consignments", ["product_id"], name: "index_consignments_on_product_id", using: :btree
  add_index "consignments", ["user_id"], name: "index_consignments_on_user_id", using: :btree

  create_table "invoices", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "customer_name"
    t.integer  "customer_phone"
    t.integer  "invoice_number"
    t.text     "customer_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "invoices", ["product_id"], name: "index_invoices_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "releases", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "user_id"
    t.integer  "invoice_number"
    t.integer  "customer_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "releases", ["product_id"], name: "index_releases_on_product_id", using: :btree
  add_index "releases", ["user_id"], name: "index_releases_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "consignments", "products"
  add_foreign_key "consignments", "users"
  add_foreign_key "invoices", "products"
  add_foreign_key "products", "users"
  add_foreign_key "releases", "products"
  add_foreign_key "releases", "users"
end