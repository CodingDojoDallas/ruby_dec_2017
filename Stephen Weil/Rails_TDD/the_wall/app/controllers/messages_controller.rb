class MessagesController < ApplicationController
    def wall
        return redirect_to new_user_path unless session[:user]
        @user = session[:user]
        @messages = Message.all
    end

    def create
        message = Message.create(content: params[:message_content], user_id: session[:user]['id'])
        message.errors.each { |tag, error| flash[tag.to_sym] = error } unless message.valid?
        return redirect_to wall_path
    end
end
