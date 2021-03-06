class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_permitted_parameters_update, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
  end

  def configure_permitted_parameters_update
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role, :avatar])
  end
end
