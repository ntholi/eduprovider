class AuthenticateStudentController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate

  def after_sign_in_path_for(resource)
    student_root_path
  end

  def authenticate
    authenticate_student!
  end
end
