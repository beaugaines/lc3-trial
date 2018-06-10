class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.references :user, index: true, foreign_key: true
      t.references :text, index: true, foreign_key: true
      t.string :content, null: false
      t.text :notes, null: false

      t.timestamps null: false
    end
  end
end
