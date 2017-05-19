class Lesson < ApplicationRecord
  belongs_to :tutored_course
  has_many :lessons
end
