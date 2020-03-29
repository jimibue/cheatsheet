class SubTopic < ApplicationRecord
  belongs_to :core_topic
  has_many :cheat_sheets

  # {id: 1, title: "destructing", description: "about destructing", examples: Array}
  # {id: 2, title: "arrow function", description: "about arrows", examples: Array}

  def self.getAllExamples(id)
    st = SubTopic.find(id)
    cheat_sheets = st.cheat_sheets
    cheatSheets = cheat_sheets.map do |cheat_sheet|
      { id: cheat_sheet.id,
        title: cheat_sheet.title,
        description: cheat_sheet.description,
        examples: cheat_sheet.examples }
    end
    return { cheatSheets: cheatSheets }
  end
end

# cheat_sheets = CoreTopic.first.sub_topics.first.cheat_sheets
# defaultCheatSheetsWithExamples = cheat_sheets.map do |cheat_sheet|
#   { id: cheat_sheet.id,
#     title: cheat_sheet.title,
#     description: cheat_sheet.description,
#     examples: cheat_sheet.examples }
# end

# return { defaultCheatSheets: defaultCheatSheetsWithExamples }
