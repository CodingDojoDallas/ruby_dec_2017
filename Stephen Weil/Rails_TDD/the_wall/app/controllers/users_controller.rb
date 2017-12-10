class UsersController < ApplicationController
    def index
        if session[:user]
            return redirect_to wall_path
        end
    end

    def login
        @user = User.where(username: params[:username])
        if @user.length > 0
            session[:user] = @user[0]
            return redirect_to wall_path
        end
        @newuser = User.create(username: params[:username])
        if @newuser.errors.full_messages.length > 0
            @newuser.errors.each { |key, error| flash[key.to_sym] = error }
            return redirect_to new_user_path
        end
        session[:user] = @newuser
        return redirect_to wall_path
    end

    def logout
        reset_session
        return redirect_to new_user_path
    end
end
