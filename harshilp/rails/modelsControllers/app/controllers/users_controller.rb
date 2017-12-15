class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    User.create(name:params[:name])
    return redirect_to '/users'
  end

  def total
    count = User.all.length
    render plain: "There are #{count} users"
  end
end
