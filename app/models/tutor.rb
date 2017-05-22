class Tutor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        #  :confirmable
  belongs_to :user_profile, optional: true
  has_many :tutored_courses

  def to_s
    user_profile.full_name unless !user_profile
  end
end
