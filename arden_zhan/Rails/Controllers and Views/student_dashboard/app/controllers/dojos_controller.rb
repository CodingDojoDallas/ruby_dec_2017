class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.save
      # if @dojo.save, will be true if it passes validations and saved into db

      # Controllers II section, for flash messages :notice
      redirect_to root_url, notice: "Created Dojo"
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
    @students = @dojo.students
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
    if @dojo.update(dojo_params)
      redirect_to root_url, notice: "Updated Dojo"
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to root_path
  end
    
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
