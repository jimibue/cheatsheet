#   create_table "cheat_sheets", force: :cascade do |t|
#     t.string "title"
#     t.string "description"
#     t.bigint "sub_topic_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["sub_topic_id"], name: "index_cheat_sheets_on_sub_topic_id"
#   end

#   create_table "core_topics", force: :cascade do |t|
#     t.string "title"
#     t.string "language"
#     t.string "description"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "examples", force: :cascade do |t|
#     t.string "title"
#     t.string "description"
#     t.text "code_snippet"
#     t.bigint "cheat_sheet_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["cheat_sheet_id"], name: "index_examples_on_cheat_sheet_id"
#   end

#   create_table "items", force: :cascade do |t|
#     t.string "name"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "sub_topics", force: :cascade do |t|
#     t.string "title"
#     t.string "description"
#     t.bigint "core_topic_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["core_topic_id"], name: "index_sub_topics_on_core_topic_id"
#   end

#   add_foreign_key "cheat_sheets", "sub_topics"
#   add_foreign_key "examples", "cheat_sheets"
#   add_foreign_key "sub_topics", "core_topics"
# end

JS = CoreTopic.create(title: "JavaScript", language: "JavaScript", description: "about js yo")
RUBY = CoreTopic.create(title: "Ruby", language: "Ruby", description: "about Ruby yo")

JS_ST1 = JS.sub_topics.create(title: "ES6", description: "new features 2016 yo")
JS_ST2 = JS.sub_topics.create(title: "LOOPS", description: "spin me right around")

CS1 = JS_ST1.cheat_sheets.create(title: "destructing", description: "about destructing")
CS2 = JS_ST1.cheat_sheets.create(title: "arrow function", description: "about arrows")

CS1.examples.create(code_snippet: "<p>yoyo</p>", title: "yoyo", description: "about ex")

puts "db seeded"
