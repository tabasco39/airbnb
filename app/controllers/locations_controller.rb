class LocationsController < ApplicationController
    def show
        @location = Location.find(params[:id])
    end

    def index
        @location = Location.all
    end
end
