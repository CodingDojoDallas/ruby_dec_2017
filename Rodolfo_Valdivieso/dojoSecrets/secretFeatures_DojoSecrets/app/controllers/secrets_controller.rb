class SecretsController < ApplicationController
  def index
  	@secrets = Secret.all
  	@secrets2 = []
  	@temp = {}
  	@like = 0
  	@secrets.each do |secret|
  		@likers = secret.secrets_likers
  		@likers.each do |user|
  			if current_user.id == user.id
  				@temp[:like] = 1
  				@like = 1
  			end
  		end 
  		if @like==0
  			@temp[:like] = 0
  		end
  		@temp[:likes]   = secret.likes.count
  		@temp[:secret]  = secret
  		@like=0
  		@secrets2.push(@temp)
  		@temp= {}
  	end
  	return render 'index'
  end

  def create
  	@secret = Secret.new(content:params[:Content], user:current_user)
  	if @secret.valid?
  		@secret.save
  	else
  		flash[:failed] = @secret.errors.full_messages
  	end
  	return redirect_to userShow_path current_user.id
  end


  def like
  	Like.create(user:current_user, secret:Secret.find(params[:secret_id]))
  	return redirect_to secretsIndex_path
  end

  def unlike

  	Like.delete(Like.where(user:User.find(current_user.id), secret:Secret.find(params[:secret_id])))
  	return redirect_to secretsIndex_path
  end

  def destroy
  	if Like.where(secret:Secret.find(params[:secret_id]))
  		Like.delete_all(secret:Secret.find(params[:secret_id]))
  	end
  	Secret.find(params[:secret_id]).delete
  	return redirect_to userShow_path current_user.id
  end

  def destroy2
  	if Like.where(secret:Secret.find(params[:secret_id]))
  		Like.delete_all(secret:Secret.find(params[:secret_id]))
  	end
  	Secret.find(params[:secret_id]).delete
  	#return redirect_to secretsIndex_path
  	return redirect_to userShow_path current_user.id
  end


end
