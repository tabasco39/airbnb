class ReservationsController < ApplicationController
    before_action :authenticate_user!
    def create
        @house = House.find(params[:house_id])
        user = current_user
        @reservation = @house.reservations.new(reservation_params)
        @reservation.user = user
        @reservation.guest_name = user.name
        @reservation.house_owner = @house.user
        if @reservation.save
            ProfileMailer.with(reservation: @reservation).welcome_email.deliver_now
            redirect_to house_path(@house)
        else
            render house_path(@house)
        end
    
    end
    private
    def reservation_params
        params.require(:reservation).permit(:start_time,:end_time)
    end
end
