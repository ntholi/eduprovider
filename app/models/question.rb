class Question < ApplicationRecord
  belongs_to :student
  belongs_to :lesson
  has_many :answers

  enum privacy: [ :Public, :Private ]

end
