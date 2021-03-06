class HousesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show ]
  before_action :set_house, only: [:show, :edit, :update, :destroy]

  # GET /houses
  # GET /houses.json
  def index
    
    if params[:category_id].present? || params[:location_id].present?
      houses1 = House.where(category_id: params[:category_id] )
      @houses = houses1.where(location_id: params[:location_id])
    else
      @houses = House.all
    end

  end

  # GET /houses/1
  # GET /houses/1.json
  def show 
    @house = House.find(params[:id])
    
  end

  # GET /houses/new
  def new
    @house = House.new
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  # POST /houses.json
  def create
    @house = House.new(house_params)
    @house.user_id = current_user.id
    # @house.images.attach(params[:images])


    respond_to do |format|
      if @house.save
        format.html { redirect_to @house, notice: 'House was successfully created.' }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to @house, notice: 'House was successfully updated.' }
        format.json { render :show, status: :ok, location: @house }
      else
        format.html { render :edit }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1
  # DELETE /houses/1.json
  def destroy
    @house.destroy
    respond_to do |format|
      format.html { redirect_to houses_url, notice: 'House was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def house_params
      params.require(:house).permit(:nom,:prenom,:adresse,:mail,:contact,:categorie,:nombre_de_chambre,:localisation,:prix,:category_id,:user_id,:location_id,images:[])
    end
end
