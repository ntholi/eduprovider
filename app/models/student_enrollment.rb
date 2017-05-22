class StudentEnrollment < ApplicationRecord
  belongs_to :student
  belongs_to :tutored_course
end
