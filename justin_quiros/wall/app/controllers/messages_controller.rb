class MessagesController < ApplicationController
  def index
  	@user = params[:username]
  	@messages = Message.all
  	p @messages
  end

	def logout
		reset_session
		redirect_to new_user_path
	end
	
	def new
		@message = Message.new(content: params[:content], user_id: session[:id])
		if @message.save
			redirect_to messages_path
		else
			flash[:errors] = @message.errors.full_messages
			redirect_to :back
  		end
  	end
end
