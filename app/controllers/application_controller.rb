#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery  
  helper_method :current_user

  private

  def require_login
    unless logged_in?
      redirect_to login_url
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= Usuario.find(session[:user_id]) if session[:user_id]
  end

end
