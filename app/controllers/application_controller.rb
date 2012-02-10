class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def current_user
    return if session[:user_id].blank?
    @current_user ||= User.find(session[:user_id])
  end
  helper_method :current_user
end
