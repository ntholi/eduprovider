class Course < ApplicationRecord
  has_many :tutored_courses

  def to_s
    "#{code}, #{name}"
  end
end
