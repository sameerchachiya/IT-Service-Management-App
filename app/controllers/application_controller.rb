class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ROUTING BASED ON TYPE OF USER
  def after_sign_in_path_for(resource)
    if resource.employee.designation.role == "ADMIN"
      tickets_path
    elsif resource.employee.designation.role == "SDE"
      landing_path
    elsif resource.employee.designation.role == "SE"
      slanding_path
    else
      root_path
    end
  end

  protected

  # TAKE EMP_ID AS INPUT IN USER
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :employee_id) }
  end
end
