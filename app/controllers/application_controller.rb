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
    session[:theme]||=DEFAULT_THEME
    if params[:theme] and (AVAILABLE_THEMES.collect { | t , n | n }).include? params[:theme]
      session[:theme]=params[:theme]
    end
  end
end
