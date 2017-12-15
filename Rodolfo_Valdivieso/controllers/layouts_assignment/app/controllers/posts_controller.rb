class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	@users = User.all
  	return render layout: 'three_column'
  end

  def create
  	@post  = Post.new(title:params[:title], content:params[:content], user:User.find(params[:author]))
  	if @post.valid?
  		@post.save
  		session[:title] = nil
     	session[:content] = nil
      	session[:author] = nil
  	else
  		session[:title] = params[:title]
     	session[:content] = params[:content]
      	session[:author] = params[:author]
  		flash[:failed] = @post.errors.full_messages
  	end
  	return redirect_to '/posts'
  end
end
