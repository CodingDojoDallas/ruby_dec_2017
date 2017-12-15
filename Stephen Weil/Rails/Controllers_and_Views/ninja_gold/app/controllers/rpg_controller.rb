class RpgController < ApplicationController
    def index
        session[:gold] ||= 0
        session[:activities] ||= Array.new
    end
    def gold
        buildings = {
            'farm': rand(10..20),
            'cave': rand(5..10),
            'house': rand(2..5),
            'casino': rand > 0.5 ? rand(50) : rand(50) * -1
        }
        amount = buildings[params[:building].to_sym]
        session[:gold] += amount
        if amount >= 0
            session[:activities].push("Earned #{amount} gold at the #{params[:building]}!")
        else
            session[:activities].push("Lost #{amount * -1} gold at the casino!")
        end
        return redirect_to '/'
    end
end
