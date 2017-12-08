class SessionsController < ApplicationController

  def new
  	return render 'new'
  end

  def log_in
    # Log User In
    # if authenticate true
    @user = User.find_by_email(params[:Email]).try(:authenticate, params[:Password])
    if @user
    	session[:user_id] = @user.id
    	return redirect_to userDashboard_path
    else
    	flash[:failed] = ["Invalid Combination"]
    	return redirect_to sessionNew_path
    end
  end
  helper_method :log_in
  
  def destroy
    # Log User out
    session[:user_id] = nil
    return redirect_to sessionNew_path
  end

  
  
end
