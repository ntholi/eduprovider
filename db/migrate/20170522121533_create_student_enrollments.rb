class CreateStudentEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :student_enrollments do |t|
      t.references :student, foreign_key: true
      t.references :tutored_course, foreign_key: true

      t.timestamps
    end
  end
end
