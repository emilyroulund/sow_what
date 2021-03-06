class SessionsController < ApplicationController
    def new
        if session[:user_id]
            user = User.find_by(id: session[:user_id])
            redirect_to user_path(user)
        end
    end
    
    def create
        user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			@errors = ["Invalid credentials"]
			render :new
		end
    end

    def destroy
        session.delete(:user_id)
        redirect_to new_session_path
    end
end
