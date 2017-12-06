class UsersController < ApplicationController
  def index
  	@users = User.all
  	render layout: 'two_column'
  end

  def create
  	@user = User.new(form_params)
	if @user.save
		flash[:success] = "You have successfully created a User!"
		redirect_to users_path
  	else 
  		flash[:errors] = "#{@user} does not exist in our database."
  		redirect_to :back
  	end
  end

  private
  	def form_params
  		params.require(:user_form).permit(:first_name, :last_name, :favorite_language)
  	end
end
