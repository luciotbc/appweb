class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  layout :app_layout

  protected
  def app_layout
    if devise_controller? && resource_name == :user && action_name == 'new'
      'pages'
    elsif action_name == 'primeiro_cadastro'
      'pages'
    else
      'application'
    end
  end

  #redireciona para completar cadastro
  def after_sign_in_path_for(resource)
        if resource.cadastro_completo?
           home_welcome_path
        else
           root_path
        end
  end
end
