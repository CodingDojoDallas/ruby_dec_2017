class UsersController < ApplicationController
  def new
  	
  end

  def show

  end

  def create
    if @user = User.find_by_email(:email)
      flash[:errors] = "The email provided is already registered"
      redirect_to :back
    else
      if params[:password] == params[:conf_password]
        @user = User.new(form_params)
        if @user.save
          session[:user_id] = @user.id
          p session[:user_id]
          redirect_to new_session_path
        else
          flash[:errors] = @user.errors.full_messages
          redirect_to :back
        end
      end
    end

  end

  def edit
  end

  private
    def form_params
      params.require(:user_form).permit(:name, :email, :password)
    end
end
