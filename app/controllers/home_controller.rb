class HomeController < ApplicationController

  def index
    @musos = Muso.all
  end

end
