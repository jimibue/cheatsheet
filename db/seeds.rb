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

R_ST1 = RUBY.sub_topics.create(title: "Ruby 1", description: "new features 2016 yo")
R_ST2 = RUBY.sub_topics.create(title: "Ruby 2", description: "spin me right around")

CS1 = JS_ST1.cheat_sheets.create(title: "destructing", description: "about destructing")
CS2 = JS_ST1.cheat_sheets.create(title: "arrow function", description: "about arrows")

CS3 = R_ST1.cheat_sheets.create(title: "destructing in ruby", description: "about destructing")
CS4 = R_ST1.cheat_sheets.create(title: "arrow function in ruby", description: "about arrows")

CS1.examples.create(code_snippet: "
<div>
  <p>this is destructoring</p>
</div>
",
                    title: "yoyo", description: "about ex")

CS1.examples.create(
  title: "Arrow with implicit return",
  description: "if using () no return is neeeded",
  code_snippet: "
const addOne = (x) => (
  x + 1
)
console.log(addOne(1)) // => 2
",
)

CS1.examples.create(
  title: "Arrow with implicit return",
  description: "if using {} return is needed",
  code_snippet: "
const addOne = (x) => {
  return x + 1
}
console.log(addOne(1)) // => 2
",
)

CS2.examples.create(code_snippet: "<p>yoyoa</p>", title: "yoyoa", description: "about ex")

CS3.examples.create(code_snippet: "<p>yoyo</p>", title: "yoyo", description: "about ex")

CS3.examples.create(code_snippet: "<p>yoyo ruby</p>", title: "ruby 1yoyoa", description: "about ex")
CS4.examples.create(code_snippet: "<p>yoyo</p>", title: "ruby 2yoyo", description: "about ex")

CS4.examples.create(code_snippet: "<p>yoyoa</p>", title: "yoyoa", description: "about ex")

puts "db seeded"
