class TutoredCourse < ApplicationRecord
  belongs_to :tutor
  belongs_to :course
  has_many :lessons
  has_many :student_enrollments

  def to_s
    course.to_s
  end
end
