class UsersController < ApplicationController
  def new
  end
  def logon
  	if @user = User.find_by(username: :username)
  		session[:username] = @user.username
  		session[:id] = @user.id
  		redirect_to messages_path
  	else
  		@user = User.new(form_params)
  			if @user.save
		  		session[:username] = @user.username
  				session[:id] = @user.id
  				redirect_to messages_path
  			else
  				flash[:errors] = @user.errors.full_messages
		  		redirect_to :back
		  	end
  	end
  end

	private
		def form_params
			params.require(:user_form).permit(:username)
		end
end
