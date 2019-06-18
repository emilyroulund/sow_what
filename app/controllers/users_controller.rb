class UsersController < ApplicationController
    before_action :authorized 
    skip_before_action :authorized, only: [:new, :create]
    def new
        @user = User.new
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            @errors = @user.errors.full_messages
            render :new
        end
    end

    private

    def authorized 
        if !current_user
            @user = User.new 
            @errors = ["Please login to access that page:"]
            render :"sessions/new" 
            # redirect_to new_user_path
        end 
    end 

    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation)
    end
end
