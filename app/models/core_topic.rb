class CoreTopic < ApplicationRecord
  has_many :sub_topics

  # want to return item for naviagtion, which looks like this
  # export const nav = [
  #   {
  #     id: 1,
  #     title: "javascript",
  #     subTopics: [
  #       { title: "es6", id: 1 },
  #       { title: "es7", id: 2 },
  #       { title: "spread", id: 3 }
  #     ]
  #   },
  #   {
  #     id: 2,
  #     title: "ruby",
  #     subTopics: [
  #       { title: "loops", id: 4 },
  #       { title: "classes", id: 5 },
  #       { title: "hash", id: 6 }
  #     ]
  #   }
  # ];

  def self.defaultCheatSheetsWithExamples

    # add defualt cheatSheat
    cheat_sheets = CoreTopic.first.sub_topics.first.cheat_sheets
    defaultCheatSheetsWithExamples = cheat_sheets.map do |cheat_sheet|
      { id: cheat_sheet.id,
        title: cheat_sheet.title,
        description: cheat_sheet.description,
        examples: cheat_sheet.examples }
    end

    return { defaultCheatSheets: defaultCheatSheetsWithExamples }
  end

  def self.getNavItems
    topics = CoreTopic.all
    coreSubTopicsNavItems = topics.map do |topic|
      { id: topic.id,
        title: topic.title,
        subTopics: topic.sub_topics }
    end
  end

  # def self.getItem(id = CoreTopic.find_by(title: "JavaScript").id)
  #   topics = CoreTopic.all
  #   sub_topics = topics.map do |topic|
  #     topic.sub_topics
  #   end
  #   cheatsheats = sub_topics.map do |sub_topic|
  #     sub_topic.cheat_sheets
  #   end
  #   examples = cheatsheats.map do |cheatsheat|
  #     cheatsheat.examples
  #   end

  #   { topics: topics, subTopics: sub_topics, cheatsheats: cheatsheats, examples: examples }
  #   binding.pry
  # end
end
