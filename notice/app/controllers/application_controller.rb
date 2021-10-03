class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :family_code, :birth_year, :birth_month, :birth_day])
  end
end
