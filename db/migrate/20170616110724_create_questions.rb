class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.boolean :answered
      t.integer :privacy
      t.references :student, foreign_key: true
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
