class MainController < ApplicationController
    def index
    end
    def submit
        session[:data] = params[:data]
        session[:count] ||= 0
        session[:count] += 1
        flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now."
        return redirect_to '/result'
    end
    def result
    end
end
