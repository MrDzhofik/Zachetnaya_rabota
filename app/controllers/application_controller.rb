class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_locale

    def configure_permitted_parameters
        attributes = [:email, :image_url]
        devise_parameter_sanitizer.permit(:update, keys: attributes)
    end

    def set_locale
        I18n.locale = params[:locale]
    end

    def extract_locale
        parsed_locale = params[:locale]
        return unless I18n.available_locales.map(&:to_s).include?(parsed_locale)

        parsed_locale.to_sym
    end
end
