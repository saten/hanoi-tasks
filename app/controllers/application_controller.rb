class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_lang,:set_theme
  def set_lang
    if params[:lang] and I18n.available_locales.include? params[:lang].to_sym
      session[:lang]=params[:lang]
    end
    I18n.locale=session[:lang]
  end
  def set_theme
    if params[:theme] and ["ui-darkness","hot-sneaks"].include? params[:theme]
      session[:theme]=params[:theme]
    end
    logger.debug session[:theme]
  end
end
