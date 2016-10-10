class ApplicationController < ActionController::Base
  #before_action :authenticate_user_blood_bank!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:cnpj])
  end
  end
