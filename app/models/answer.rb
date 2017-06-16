class Answer < ApplicationRecord
  belongs_to :tutor
  belongs_to :question
end
