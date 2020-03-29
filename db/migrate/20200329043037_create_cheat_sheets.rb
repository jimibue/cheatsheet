class CreateCheatSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :cheat_sheets do |t|
      t.string :title
      t.string :description
      t.belongs_to :sub_topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
