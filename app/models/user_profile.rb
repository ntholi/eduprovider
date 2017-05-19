class UserProfile < ApplicationRecord
  has_one :tutor
  has_one :student

  def full_name
    "#{first_name} #{last_name}"
  end
end
