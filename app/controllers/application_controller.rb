class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  def after_sign_in_path_for(resource)
    if resource.class == Tutor
      tutor_root_path
    elsif resource.class == Student
      student_root_path
    end
  end

  def authenticate
    if controller_is('home') && action_is('tutor_home')
      authenticate_tutor!
    elsif controller_is('home') && action_is('student_home')
      authenticate_student!
    end
  end

  def controller_is(name)
    params['controller'] == name
  end

  def action_is(name)
    params['action'] == name
  end
end
