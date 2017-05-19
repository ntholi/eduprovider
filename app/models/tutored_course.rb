class TutoredCourse < ApplicationRecord
  belongs_to :tutor
  belongs_to :course
  has_many :lessons

  def to_s
    course.to_s
  end
end
