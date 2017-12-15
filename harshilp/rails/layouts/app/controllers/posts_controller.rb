class PostsController < ApplicationController
    layout 'three_column'

    def index
        @posts = Post.all
        @users = User.all
    end

    def create
        post = Post.new(post_params)
        aut = User.find_by(first_name: params[:author])
        puts aut
        post.user = aut
        puts post
        if not post.save
            flash[:errors] = post.errors.full_messages            
        end
        return redirect_to '/posts'
    end

    private
        def post_params
            params.require(:post).permit(:title, :content)
        end

end
