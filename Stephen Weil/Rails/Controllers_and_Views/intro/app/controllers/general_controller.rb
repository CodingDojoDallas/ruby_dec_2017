class GeneralController < ApplicationController
    def index
        return render plain: "What do you want me to say?"
    end
    def hello
        return render plain: "Hello CodingDojo!"
    end
    def sayhello
        return render plain: "Saying Hello!"
    end
    def heyjoe
        return render plain: "Saying Hello Joe!"
    end
    def heymichael
        return redirect_to '/say/hello/joe'
    end
    def count
        session[:counter] ||= 0
        session[:counter] += 1
        return render plain: "You visited this url #{session[:counter]} time(s)"
    end
    def restart
        session[:counter] = 0
        return render plain: "Destroyed the session!"
    end
end
