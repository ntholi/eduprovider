class Lesson < ApplicationRecord
  belongs_to :tutored_course
  has_one :video_lesson

  def to_s
    title
  end
end
