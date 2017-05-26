class Lesson < ApplicationRecord
  belongs_to :tutored_course
  has_one :video_lesson, :dependent => :delete_all
  validates_presence_of :title

  def to_s
    title
  end
end
