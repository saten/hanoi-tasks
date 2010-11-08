class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_lang
  def set_lang
    logger.debug I18n.available_locales.inspect
    if params[:lang] and I18n.available_locales.include? params[:lang].to_sym
      logger.debug session[:lang]
      logger.debug params[:lang]
      session[:lang]=params[:lang]
    end
    I18n.locale=session[:lang]
    logger.debug I18n.locale
  end
end
