class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  end

  def new
  	@dojo = Dojo.new
  end

  def create
  	# session[:form] = form_params
	@dojo = Dojo.new(form_params)
	if @dojo.save
		flash[:success] = "You have successfully created a Dojo!"
		redirect_to dojos_path
  	else 
  		flash[:errors] = @dojo.errors.full_messages
  		redirect_to dojos_new_path
  	end
  end

  def show
  	@dojo = Dojo.find(params[:id])
  	@students = Student.all
  end

  def edit
  	@dojo = Dojo.find(params[:id])
  	
  end

  def update
  	dojo = Dojo.find(params[:id])
  	
  	if dojo.update(form_params)
  		flash[:success] = "You have successfully updated a Dojo!"
		redirect_to dojos_path
	else
		flash[:errors] = dojo.errors.full_messages
		redirect_to :back
	end
  end

  def destroy
  	dojo = Dojo.find(params[:id])
  	dojo.destroy
  	redirect_to dojos_path
  end

  private
  	def form_params
  		params.require(:form).permit(:branch, :street, :city, :state)
  	end
end
	