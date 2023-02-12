class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  respond_to :json

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :firstname, :middlename, :lastname, :nickname)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:email, :password, :password_confirmation, :current_password, :firstname, :middlename, :lastname,
               :nickname)
    end
  end

  def render_jsonapi_response(resource)
    if resource.errors.empty?
      render jsonapi: resource
    else
      render jsonapi_errors: resource.errors, status: 400
    end
  end
end
