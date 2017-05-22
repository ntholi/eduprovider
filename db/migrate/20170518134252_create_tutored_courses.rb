class CreateTutoredCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :tutored_courses do |t|
      t.references :tutor, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
