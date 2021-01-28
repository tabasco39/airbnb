class LocationsController < ApplicationController
    def show
        @location = Location.find(params[:id])
    end

    def index
        @location = Location.all
        @houses = House.all
    end
end
