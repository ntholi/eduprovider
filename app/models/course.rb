class Course < ApplicationRecord
  has_many :tutored_courses

  def to_s
    name
  end
end
