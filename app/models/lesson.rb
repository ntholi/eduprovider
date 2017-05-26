class Lesson < ApplicationRecord
  belongs_to :tutored_course
  has_one :video_lesson, :dependent => :destroy
  has_one :audio_lesson, :dependent => :destroy
  validates_presence_of :title

  def to_s
    title
  end
end
