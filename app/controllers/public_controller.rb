class PublicController < ApplicationController
  def index
    @houses = House.all
  end
end
