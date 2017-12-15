class UsersController < ApplicationController
  def new
  end

  def show
  	@welcome = "Welcome, shane"
  	return render 'show'
  end

  def create
	  @user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
	  if @user.valid?
	  	@user.save
	    flash[:notice] = ['User successfully created']
	    return redirect_to user_path @user.id.to_s
	  else
	    #errors we need to code later
	    flash[:notice] = @user.errors.full_messages
	    return redirect_to new_user_path
	  end
  end
end
