class UsersController < ApplicationController
    layout "twocol"

    def index
        @users = User.all
    end

    def create
        @user = User.create(user_params)
        @user.errors.each do |tag, error|
            flash[tag.to_sym] = error
        end
        return redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :favorite_language)
    end
end
