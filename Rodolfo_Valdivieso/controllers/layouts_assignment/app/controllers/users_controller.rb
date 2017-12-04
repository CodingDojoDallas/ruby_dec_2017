class UsersController < ApplicationController
 
  def index
  	@users = User.all
  	return render layout: 'two_column'
  end

  def create
  	@user  = User.new(first_name:params[:first_name], last_name:params[:last_name], favorite_language:params[:language])
  	if @user.valid?
  		@user.save
      session[:first_name] = nil
      session[:last_name] = nil
      session[:language] = nil
  	else
  		flash[:failed] = @user.errors.full_messages
      session[:first_name] = params[:first_name]
      session[:last_name] = params[:last_name]
      session[:language] = params[:language]
  	end
  	return redirect_to '/'
  end
end
