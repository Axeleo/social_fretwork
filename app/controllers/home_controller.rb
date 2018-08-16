class HomeController < ApplicationController

  def index
    @musos = Muso.all
    @featured = @musos.sample(5)
  end

end
