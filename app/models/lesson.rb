class Lesson < ApplicationRecord
  belongs_to :tutored_course
  has_one :video_lesson
  validates_presence_of :title
  
  def to_s
    title
  end
end
