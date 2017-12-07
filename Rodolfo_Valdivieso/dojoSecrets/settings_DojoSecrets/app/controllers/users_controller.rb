class UsersController < ApplicationController
  def new
  	return render 'new'
  end

  def show
  	return render 'show'
  end

  def create
  	@user = User.new(name:params[:Name], email:params[:Email], password:params[:Password], password_confirmation:params[:Password_Confirmation])
  	if @user.valid?
  		@user.save
  		return redirect_to sessionNew_path
  	else
  		flash[:failed] = @user.errors.full_messages
		return redirect_to userNew_path  	
	end
  end

  def edit
    return render 'edit'
  end

  def update
    @user = User.find(current_user.id)
    @user.name = params[:Name]
    @user.email = params[:Email]
    if @user.valid?
      @user.save
      return redirect_to userDashboard_path
    else
      flash[:failed] = @user.errors.full_messages
      return redirect_to userEdit_path @user.id
    end
  end

  def destroy
    User.find(current_user.id).delete
    session[:user_id] = nil
    return redirect_to userNew_path
  end

  def dashboard
  	return render 'dashboard'
  end

end
