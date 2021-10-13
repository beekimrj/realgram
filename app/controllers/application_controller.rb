class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    added_attrs = %i[email full_name about phone_number]
    devise_parameter_sanitizer.permit :accept_invitation, keys: added_attrs
  end
end
