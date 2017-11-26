class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def hello
    render html: "hello, world!"
  end

  def index
    render html: "hello, world!"
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :phone_number, :description])
    end
end
