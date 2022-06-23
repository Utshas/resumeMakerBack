class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: User::ADDITIONAL_USER_FIELDS)
    devise_parameter_sanitizer.permit(:account_update, keys: User::ADDITIONAL_USER_FIELDS)
  end
end
