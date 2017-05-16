class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.class == Tutor
      admin_root_path
    elsif resource.class == Student
      dashboard_index_path
    end
  end

end
