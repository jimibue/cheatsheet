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
REACT = CoreTopic.create(title: "React", language: "React", description: "about React yo")
RAILS = CoreTopic.create(title: "Rails", language: "Rails", description: "about Rails yo")
POSTGRES = CoreTopic.create(title: "Postgre", language: "Rails", description: "about Rails yo")
GIT = CoreTopic.create(title: "GIT", language: "Rails", description: "about Rails yo")
TERMINAL = CoreTopic.create(title: "Terminal", language: "Rails", description: "about Rails yo")
DEVOPS = CoreTopic.create(title: "Devops", language: "Rails", description: "about Rails yo")

JS_ST1 = JS.sub_topics.create(title: "ES6", description: "new features 2016 yo")
JS_ST2 = JS.sub_topics.create(title: "LOOPS", description: "spin me right around")
JS_ST3 = JS.sub_topics.create(title: "Objects", description: "spin me right around")
JS_ST4 = JS.sub_topics.create(title: "Classes", description: "spin me right around")
JS_ST5 = JS.sub_topics.create(title: "Arrays", description: "spin me right around")

R_ST1 = RUBY.sub_topics.create(title: "Hash", description: "new features 2016 yo")
R_ST2 = RUBY.sub_topics.create(title: "Arrays", description: "spin me right around")
R_ST3 = RUBY.sub_topics.create(title: "Classes", description: "spin me right around")
R_ST3 = RUBY.sub_topics.create(title: "Data types", description: "spin me right around")

CS1 = JS_ST1.cheat_sheets.create(title: "rest params", description: "The rest parameter syntax allows us to represent an indefinite number of arguments as an array.")

CS2 = JS_ST1.cheat_sheets.create(title: "arrow function", description: "about arrows")

CS2a = JS_ST2.cheat_sheets.create(title: "forEach", description: "forEach allows us to iterate over every item in array")

CS2b = JS_ST2.cheat_sheets.create(title: "map", description: "map allows us to iterate over every item and return a value in new array")

CS3 = R_ST1.cheat_sheets.create(title: "destructing in ruby", description: "about destructing")
CS4 = R_ST1.cheat_sheets.create(title: "arrow function in ruby", description: "about arrows")

CS1.examples.create(
  title: "rest params",
  description: "-",
  code_snippet: "
function sum(...theArgs) {
  return theArgs.reduce((previous, current) => {
    return previous + current;
  });
}

console.log(sum(1, 2, 3));
// expected output: 6

console.log(sum(1, 2, 3, 4));
// expected output: 10
",
)

CS2.examples.create(
  title: "Arrow with implicit return",
  description: "if using () no return is neeeded",
  code_snippet: "
const addOne = (x) => (
  x + 1
)
console.log(addOne(1)) // => 2
",
)

CS2.examples.create(
  title: "Arrow with implicit return",
  description: "if using {} return is needed",
  code_snippet: "
const addOne = (x) => {
  return x + 1
}
console.log(addOne(1)) // => 2
",
)

CS2.examples.create(
  title: "Arrow with implicit return",
  description: "if using {} return is needed",
  code_snippet: "
const addOne = (x) => {
  return x + 1
}
console.log(addOne(1)) // => 2
",
)

CS2a.examples.create(
  title: "forEach basic",
  description: "login items",
  code_snippet: "
[3,2,1].forEach( item => {
  if(item % 2 == 0){
    console.log('even')
  } else {
    console.log('odd')
  }
}) 
// odd
// even
// odd
",
)

CS2b.examples.create(
  title: "map",
  description: "return new array",
  code_snippet: "
  newArray = [3,2,1].forEach( item => {
    if(item % 2 == 0){
      return 'even'
    } else {
      return 'odd'
    }
  }) 
  console.log(newArray) 
  // ['odd', 'even', 'odd']
  ",
)

CS3.examples.create(code_snippet: "<p>yoyo</p>", title: "yoyo", description: "about ex")

CS3.examples.create(code_snippet: "<p>yoyo ruby</p>", title: "ruby 1yoyoa", description: "about ex")
CS4.examples.create(code_snippet: "<p>yoyo</p>", title: "ruby 2yoyo", description: "about ex")

CS4.examples.create(code_snippet: "<p>yoyoa</p>", title: "yoyoa", description: "about ex")

puts "db seeded"
