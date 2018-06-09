class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :name, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
