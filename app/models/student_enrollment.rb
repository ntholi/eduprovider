class StudentEnrollment < ApplicationRecord
  belongs_to :student
  belongs_to :tutored_course

  validates_uniqueness_of :tutored_course, message: 'You are already enrolled in this course'

  def to_s
    tutored_course.to_s
  end

  def tutor
    tutored_course.tutor
  end
end
