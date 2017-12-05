class TimesController < ApplicationController
    def main
        @date = Time.now.strftime("%b %e, %Y")
        @time = Time.now.strftime("%l:%M %p")
    end
end
