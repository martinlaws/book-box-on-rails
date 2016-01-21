class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  
  def not_authenticated
    redirect_to login_path, alert: "You must be logged in"
  end

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
