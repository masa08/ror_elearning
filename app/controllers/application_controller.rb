class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception

  def require_login
    unless logged_in?
      flash[:danger] = "Please log in"
      redirect_to login_path
    end
  end

  def require_admin
    if current_user
      unless current_user.admin?
        flash[:danger] = "Invalid url"
        redirect_to root_url
      end
    else
      flash[:danger] = "Invalid url"
      redirect_to login_path
    end
  end
end
