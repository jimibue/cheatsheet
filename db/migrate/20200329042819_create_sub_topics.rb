class CreateSubTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_topics do |t|
      t.string :title
      t.string :description
      t.belongs_to :core_topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
