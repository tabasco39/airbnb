class ReservationsController < ApplicationController
    def create
        @house = House.find(params[:house_id])
        user = current_user
        @reservation = @house.reservations.new(reservation_params)
        @reservation.user = user
        @reservation.guest_name = user.name
        @reservation.house_owner = @house.user
        if @reservation.save
            redirect_to house_path(@house)
        else
            render house_path(@house)
        end
    
    end
    private
    def reservation_params
        params.require(:reservation).permit(:comming_date,:leaving_date)
    end
end
