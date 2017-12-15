class UsersController < ApplicationController
    def index
        return render json: User.all
    end
    def new
    end
    def create
        @user = User.create(name: params[:name])
        return redirect_to "/users/#{@user.id}"
    end
    def show
        @user = User.find(params[:id])
        return render json: @user
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        @user.update(name: params[:name])
        return redirect_to "/users/#{@user.id}"
    end
    def total
        count = User.count
        return render plain: "There are currently #{count} users"
    end
end
