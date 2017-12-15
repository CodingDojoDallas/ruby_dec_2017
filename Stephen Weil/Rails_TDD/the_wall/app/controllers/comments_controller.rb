class CommentsController < ApplicationController
    def create
        comment = Comment.create(content: params[:comment_content], user_id: session[:user]['id'], message_id: params[:id])
        flash[:comment] = {:id => params[:id], :text => comment.errors.full_messages[0] } unless comment.valid?
        return redirect_to wall_path
    end
end
