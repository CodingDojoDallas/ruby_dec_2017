class HelloController < ApplicationController
    def hello 
        render plain: 'Hello Coding Dojo!'
    end

    def sayHello
        render plain: 'Saying Hello'
    end

    def helloJoe
        render plain: 'Saying Hello Joe'
    end

    def helloMichael
        return redirect_to '/say/hello/joe'
    end

    def index
        render plain: 'What do you want me to say??'
    end

    def times
        session[:times] = session[:times]? session[:times] += 1 : 1
        render plain: "You visited this url #{session[:times]} times"
    end
    
    def restart
        session.delete(:times)
        render plain: 'DESTROYED the SESSIOOOON!' 
    end

end
