class SaysController < ApplicationController
    def hello
        render text: "Hello Coding Dojo!"
    end

    def index
        render text: "What do you want me to say?"
    end

    def say
        unless params[:name]
            render text: "Saying Hello!"
        else
            if params[:name] == "michael"
                redirect_to "/say/hello/joe"
            else
                render text: "Saying Hello Joe!"
            end
        end
    end

    def times
        session[:count] ||= 0
        # or equals creates and sets to 0 if it doesn't exist
        render text: "You have visited this url #{session[:count] += 1} time(s)"
    end

    def restart
        reset_session
        render text: "Destroyed Session"
    end
    
end
