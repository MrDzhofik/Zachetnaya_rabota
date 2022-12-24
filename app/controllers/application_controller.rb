class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        attributes = [:email, :image_url]
        devise_parameter_sanitizer.permit(:update, keys: attributes)
    end
end
