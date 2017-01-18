class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user=(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user
  # Returns a boolean representing if the user is logged in
  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  # Method to use in filter to ensure the user is logged in
  def authenticate!
    unless logged_in?
      redirect_to login_path
    end
  end

  def admin!
    unless current_user_admin?
      redirect_to root_path
    end
  end

  # Verfity if current user is admin?
  def current_user_admin?
    @current_user && @current_user.admin?
  end
  helper_method :current_user_admin?
end
