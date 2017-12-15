class DojosController < ApplicationController
    def index
        @dojos = Dojo.all 
        return render 'index'
    end

    def new
    end

    def create
        @dojo = Dojo.new(dojo_params)
        if @dojo.save
            return redirect_to '/'
        else
            flash[:errors] = @dojo.errors.full_messages
            redirect_to '/dojos/new'
        end
    end

    def show
        @dojo = Dojo.find(params[:id])
        @students = Student.where(dojo_id: params[:id])
        return render 'show'
    end

    def edit
        @dojo = Dojo.find(params[:id])
        return render 'edit'
    end

    def update
        dojo = Dojo.find(params[:id])
        status = dojo.update(dojo_params)
        if not status
            flash[:errors] = dojo.errors.full_messages
            return redirect_to "/dojos/edit/#{params[:id]}"
        else
            return redirect_to '/'
        end
    end

    def destroy
        Dojo.find(params[:id]).destroy
        return redirect_to '/'
    end

    private
        def dojo_params
            params.require(:dojo).permit(:branch, :street, :city, :state)
        end
end
