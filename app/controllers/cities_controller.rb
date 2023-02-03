class CitiesController < ApplicationController
    def index
        render "cities/index"
    end
    def forecast
        # nitpick typically we have a space around '='
        @long_lat=params[:geo]
        puts ">>>>>>>>>"+@long_lat
        @city=City.find(params[:geo])
        render "cities/weather" #:action => 'weather'
    end
end