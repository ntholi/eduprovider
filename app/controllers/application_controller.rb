class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  def after_sign_in_path_for(resource)
    if resource.class == Tutor
      tutor_root_path
    elsif resource.class == Student
      root_path
    end
  end

  def authenticate
    if params['controller'] == 'home' && params['action'] == 'tutor_home'
      authenticate_tutor!
    else
      authenticate_student!
    end
  end
end
