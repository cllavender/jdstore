class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_admin
    if !current_user.is_admin
      flash[:warning] = "You are not admin"
      redirect_to "/"
    end
  end

end
