class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :tutored_course, foreign_key: true
      t.string :title
      t.text :summary

      t.timestamps
    end
  end
end
