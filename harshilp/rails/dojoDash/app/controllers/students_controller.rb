class StudentsController < ApplicationController
    def new
        @dojo_id = params[:id]
        return render 'new'
    end

    def create
        @student = Student.new(student_params)
        @student.dojo = Dojo.find(params[:id])
        if @student.save
            return redirect_to "/dojos/show/#{params[:id]}"
        else
            flash[:errors] = @student.errors.full_messages
            redirect_to "/dojos/#{params[:id]}/students/new"
        end
    end

    def show
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.find(params[:id])
        # @cohort = Student.where(["dojo_id = :dojo_id AND id != :student_id AND created_at.strftime('%m/%d/%Y') = :today", {dojo_id: params[:dojo_id], student_id: params[:id], today: @student.created_at.strftime("%m/%d/%Y")}])
        # @cohort = Student.where(dojo_id = params[:dojo_id]).or(Student.where(created_at.strftime("%m/%d/%Y") = @student.created_at.strftime("%m/%d/%Y")))
        @cohort = []
        Student.where(dojo_id: params[:dojo_id]).where.not(id: params[:id]).each do |s|
            if s.created_at.strftime('%m/%d/%Y') == @student.created_at.strftime('%m/%d/%Y')
                @cohort.push(s)
            end
        end
        puts "COHORT #{@cohort}"
        return render 'show'
    end

    def edit
        @dojo_id = params[:dojo_id]
        @student = Student.find(params[:id])
        return render 'edit'
    end

    def update
        student = Student.find(params[:id])
        status = student.update(student_params)
        if not status
            flash[:errors] = student.errors.full_messages
            return redirect_to "/dojos/#{params[:dojo_id]}/students/#{params[:id]}/edit"
        else
            return redirect_to "/dojos/show/#{params[:dojo_id]}"
        end
    end

    def destroy
        Student.find(params[:id]).destroy
        return redirect_to "/dojos/show/#{params[:dojo_id]}"
    end

    private
        def student_params
            params.require(:student).permit(:first_name, :last_name, :email)            
        end
end
