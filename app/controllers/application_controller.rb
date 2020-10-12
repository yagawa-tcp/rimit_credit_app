class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, :configure_permitted_parameters2, if: :devise_controller?

  # private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :name])
  end
  def configure_permitted_parameters2
    devise_parameter_sanitizer.permit(:account_update, keys: [:limit, :alert])
  end
end
