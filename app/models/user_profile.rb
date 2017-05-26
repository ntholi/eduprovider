class UserProfile < ApplicationRecord
  has_one :tutor
  has_one :student
  validates_presence_of :first_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
