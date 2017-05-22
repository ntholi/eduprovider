class Lesson < ApplicationRecord
  belongs_to :tutored_course
  has_many :video_lessons 
end
