class RpgController < ApplicationController
    def index
        session[:currentGold] ||= 0
        @currentGold = session[:currentGold]

        session[:actions] ||= []
        @actions = session[:actions]
        return render 'index'
    end

    def process_form
        if params[:place] == 'farm'
            val = rand(10..20)
            session[:currentGold] += val
            session[:actions].push("Earned #{val} gold at the Farm :)")
        elsif params[:place] == 'cave'
            val = rand(5..10)
            session[:currentGold] += val
            session[:actions].push("Earned #{val} gold at the Cave :)")
        elsif params[:place] == 'house'
            val = rand(2..5)
            session[:currentGold] += val
            session[:actions].push("Earned #{val} gold and a good nights sleep at the House ZZzzz")
        else
            val = rand(10..20)
            rng = rand(1..5)
            if rng == 1
                session[:currentGold] += val
                session[:actions].push("Entered the casino and earned #{val} gold $$$")
            else
                session[:currentGold] -= val
                session[:actions].push("Entered the casino and lost #{val} gold :'(")
            end 
        end 
        return redirect_to '/'
    end 
end
