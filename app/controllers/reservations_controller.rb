class ReservationsController < ApplicationController
    before_action :authenticate_user!
    def show
        @reservation = Reservation.find(params[:id])
    end
    def new
        
    end
    def create
        @house = House.find(params[:house_id])
        @reservation = Reservation.new(reservation_params)
        @reservation.house = @house
        @user = current_user
        @reservation.user = @user
        if  @reservation.save
            redirect_to house_path(@house)
        end
        
        
    end
    def edit
        
    end
    def update
        
    end
    def delete
        
    end
    private
        def reservation_params
            params.require(:reservation).permit(:comming_date, :leaving_date)
        end
end
