class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def dashboard
  end

  layout :pages

  protected

  def pages
    if devise_controller? && resource_name == :user && action_name == "new"
      "pages"
    else
      "application"
    end
  end

end
