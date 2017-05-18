class UserProfile < ApplicationRecord
  has_one :tutor
  has_one :student
end
