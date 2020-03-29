class CreateCoreTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :core_topics do |t|
      t.string :title
      t.string :language
      t.string :description

      t.timestamps
    end
  end
end
