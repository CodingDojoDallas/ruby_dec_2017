class TimesController < ApplicationController
  def main
    time = Time.new
    time = time.localtime("-06:00")
    @tm = time.strftime("%c")
  end
end
