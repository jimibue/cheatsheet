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

ActiveRecord::Schema.define(version: 2020_03_29_043136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cheat_sheets", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "sub_topic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_topic_id"], name: "index_cheat_sheets_on_sub_topic_id"
  end

  create_table "core_topics", force: :cascade do |t|
    t.string "title"
    t.string "language"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "examples", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.text "code_snippet"
    t.bigint "cheat_sheet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cheat_sheet_id"], name: "index_examples_on_cheat_sheet_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sub_topics", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "core_topic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["core_topic_id"], name: "index_sub_topics_on_core_topic_id"
  end

  add_foreign_key "cheat_sheets", "sub_topics"
  add_foreign_key "examples", "cheat_sheets"
  add_foreign_key "sub_topics", "core_topics"
end
