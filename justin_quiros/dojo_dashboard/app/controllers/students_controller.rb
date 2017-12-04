class StudentsController < ApplicationController
  def show
  	@dojo = Dojo.find(params[:dojo_id])
  	@student = Student.find(params[:id])

  	@selected_date = @student.created_at
    @students = Student.all.where(dojo_id: @dojo.id, :created_at => @selected_date.beginning_of_day..@selected_date.end_of_day)

  end

  def edit
  	@student = Student.find(params[:id])
  	@dojos = Dojo.all
  	@dojo = Dojo.find(params[:dojo_id])
  	p @dojo
  end

  def update
  	student = Student.find(params[:id])

  	if student.update(student_form_params)
  		flash[:success] = "You have successfully updated a Dojo!"
  		url = "/dojos/#{student.dojo_id}/students/#{student.id}"
  		redirect_to url
  	else
		flash[:errors] = student.errors.full_messages
		redirect_to :back 
	end
  end

  def new
  	@dojo = Dojo.find(params[:dojo_id])
  	@dojos = Dojo.all
  end

  def create
  	@dojo = Dojo.find(params[:dojo_id])
  	@student = Student.new(student_form_params)
  	if @student.save
		flash[:success] = "You have successfully added a student to #{@dojo.branch}!"
  		url = "/dojos/#{@dojo.id}"
  		redirect_to url
  	else
		flash[:errors] = student.errors.full_messages
		redirect_to :back
	end
  end

  def destroy
  	student = Student.find(params[:id])
  	student.destroy
  	redirect_to :back
  end

  private
  	def student_form_params
  		params.require(:student_form).permit(:first_name, :last_name, :email, :dojo_id)
  	end
end
