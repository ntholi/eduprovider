class HomeController < ApplicationController
  def index
  end

  def tutor_home
    if !current_tutor.user_profile
      redirect_to new_user_profile_path
    end
    tutored_courses = TutoredCourse.all
    if tutored_courses.size > 0
      @tutored_courses = tutored_courses
    end
  end

  def student_home
    if !current_student.user_profile
      redirect_to new_user_profile_path
    end
  end
end
