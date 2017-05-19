class HomeController < ApplicationController
  def index
  end

  def tutor_home
    if !current_tutor.user_profile
      redirect_to new_user_profile_path
    end
  end

  def student_home
  end
end
