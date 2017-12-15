class PostsController < ApplicationController
    layout 'threecol'
    def index
        @posts = Post.all.joins(:user)
        @users = User.all
    end

    def create
        if User.where(id: params[:post][:user_id]).length < 1
            flash[:user_id] = "User not found. Stop messing wit da form bruh."
            return redirect_to posts_path
        end
        @post = Post.create(post_params)
        @post.errors.each do |tag, error|
            flash[tag.to_sym] = error
        end
        return redirect_to posts_path
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :user_id)
    end
end
