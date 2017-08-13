# DOCS
# class created by: Sebastián Delgado
# date 12/08/2017
# dev contact: sebasdeldi@hotmail.com
# description: main application controller (other controllers inherit from this one)

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # The whole app requires to be logged
  before_action :authenticate_user!

  # Check if devise controller is used
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    # Accept role as a registration parameter
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    end
end
