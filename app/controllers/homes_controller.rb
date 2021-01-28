class HomesController < ApplicationController
  def index
    @houses = House.all
    @category = Category.all
    @location = Location.all
  end
  def show
    @category = Category.(params[:id])
end
 
end
