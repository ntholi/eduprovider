class StudentEnrollment < ApplicationRecord
  belongs_to :student
  belongs_to :tutored_course

  def to_s
    tutored_course.name_with_tutor
  end
end
