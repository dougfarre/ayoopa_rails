class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def layout
    if is_a?(Devise::RegistrationsController) and params[:action] == 'edit'
      return "preferences"
    else
      return "application"
    end
  end  

end
