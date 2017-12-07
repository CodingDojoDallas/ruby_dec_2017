class SessionsController < ApplicationController
  def new
  	
  end

	def create
	  	@user = User.find_by(email: params[:email])
	  	if @user && @user.authenticate(params[:password])
	  		session[:user_id] = @user.id
	  		redirect_to "/users/#{@user.id}"
	  	else
	  		flash[:errors] = "Incorrect username/password"
	  		redirect_to :back
	  	end
	end

	def destroy
		reset_session
		redirect_to new_session_path
	end

	private
		def form_params
			params.require(:user_form).permit(:name, :email, :password)
		end
end
