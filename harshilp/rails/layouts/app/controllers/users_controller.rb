class UsersController < ApplicationController
    layout 'two_column'

    def index
        @users = User.all
    end

    def create
        user = User.new(user_params)
        if not user.save
            flash[:errors] = user.errors.full_messages            
        end
        return redirect_to '/users'
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :favorite_language)
        end
end
