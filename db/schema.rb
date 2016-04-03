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

ActiveRecord::Schema.define(version: 20160403191055) do

  create_table "bilances", force: :cascade do |t|
    t.float    "in"
    t.float    "out"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "machine_id"
  end

  add_index "bilances", ["machine_id"], name: "index_bilances_on_machine_id"

  create_table "branches", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "branch_id"
  end

  add_index "branches_users", ["branch_id"], name: "index_branches_users_on_branch_id"
  add_index "branches_users", ["user_id"], name: "index_branches_users_on_user_id"

  create_table "machines", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "branch_id"
  end

  add_index "machines", ["branch_id"], name: "index_machines_on_branch_id"

  create_table "users", force: :cascade do |t|
    t.string   "role"
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "birth_date"
  end

end
