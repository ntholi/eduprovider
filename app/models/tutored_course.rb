class TutoredCourse < ApplicationRecord
  belongs_to :tutor
  belongs_to :course
  has_many :lessons, :dependent => :delete_all
  has_many :student_enrollments

  def to_s
    course.to_s
  end
end
