class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  private
    def set_locale
        if params[:locale] and I18n.available_locales.include? params[:locale].to_sym
            I18n.locale = params[:locale]
        else
            I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
        end
    end
end
