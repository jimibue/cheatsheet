class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.string :title
      t.string :description
      t.text :code_snippet
      t.belongs_to :cheat_sheet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
