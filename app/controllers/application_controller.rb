class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :logged_in?
    helper_method :require_login

    def current_user
        @user = User.find_by(id: session[:user_id])
    end

    def logged_in?
        !current_user.nil?
    end

    def require_login 
        unless logged_in?
          flash[:error] = "Please log in."
          redirect_to login_path 
        end
    end
end
