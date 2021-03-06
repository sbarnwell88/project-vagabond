class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :store_current_location, unless: :devise_controller?   


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  private   
  def store_current_location                               # save location for redirect after login/logout          
    store_location_for(:user, request.url)
  end

  def after_sign_up_path_for(resource_or_scope)            
    request.referrer || root_path
  end


  def after_sign_out_path_for(resource_or_scope)            # overwriting the redirect path method
    request.referrer || root_path
  end

end
