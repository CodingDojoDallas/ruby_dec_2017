class StudentsController < ApplicationController
    def new
        @dojos = Dojo.all
        @dojo = Dojo.find(params[:dojo_id])
    end
    
    def create
        @student = Student.new(student_params)

        if @student.save
            redirect_to dojo_path(@student.dojo_id), notice: "Created Student"
        else
            flash[:errors] = @student.errors.full_messages
            redirect_to :back
        end
    end
    
    def show
        @student = Student.with_dojo(params[:id])
        @cohort = Student.cohort(@student)
    end
    
    def edit
        @dojos = Dojo.all
        @student = Student.find(params[:id])
    end
    
    def update
        @student = Student.find(params[:id])
    
        if @student.update(student_params)
            redirect_to dojo_student_path(@student.dojo_id, @student.id), notice: "Updated Student"
        else
            flash[:errors] = @student.errors.full_messages
            redirect_to :back
        end
    end
    
    def destroy
        Student.find(params[:id]).destroy
        redirect_to :back
    end
    
    private
        def student_params
            params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
        end
end
