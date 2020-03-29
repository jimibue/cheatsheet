class CheatSheet < ApplicationRecord
  belongs_to :sub_topic
  has_many :examples
end
