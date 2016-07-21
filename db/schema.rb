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

ActiveRecord::Schema.define(version: 20160720195856) do

  create_table "allergies", force: :cascade do |t|
    t.text     "restriction"
    t.integer  "item_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "allergies", ["item_id"], name: "index_allergies_on_item_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredients", ["item_id"], name: "index_ingredients_on_item_id"

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.float    "price"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "allergy_id"
    t.string   "allergy"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
