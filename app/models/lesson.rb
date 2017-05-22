class Lesson < ApplicationRecord
  belongs_to :tutored_course
  has_many :video_lessons

  def to_s
    title
  end
end
