class SubTopic < ApplicationRecord
  belongs_to :core_topic
  has_many :cheat_sheets
end
