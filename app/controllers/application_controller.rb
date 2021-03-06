class ApplicationController < ActionController::Base

  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in'
      redirect_to login_url
    end
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end


end
