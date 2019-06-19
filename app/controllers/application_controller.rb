class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?, :can_i_edit?

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    def can_i_edit?
        @user = User.find_by(id: params[:id])
        @current_user = current_user
        if @current_user == @user
            true
        else
            false
        end
    end


end
