class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :user_profile, optional: true
  has_many :student_enrollments

  def to_s
    user_profile.full_name unless !user_profile
  end
end
