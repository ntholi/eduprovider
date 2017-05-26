class TutoredCourse < ApplicationRecord
  belongs_to :tutor
  belongs_to :course
  has_many :lessons, :dependent => :destroy
  has_many :student_enrollments

  def to_s
    course.to_s
  end

  def name_with_tutor
    "#{course.name} (with #{tutor})"
  end
end
