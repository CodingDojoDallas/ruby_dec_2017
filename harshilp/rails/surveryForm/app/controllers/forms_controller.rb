class FormsController < ApplicationController
    def index
        session[:submits] ||= 0 
    end

    def process_form
        session[:submits] += 1
        session[:res] = params[:survey]
        flash[:success] = "Thanks for submitting the form. You have submitted the form #{session[:submits]} times!"

        return redirect_to '/result'
    end

    def result
        @results = session[:res]
        return render 'results'
    end

end
