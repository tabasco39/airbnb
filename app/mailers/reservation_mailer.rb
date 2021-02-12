class ReservationMailer < ApplicationMailer

    def reservation(user)
        @user = user
        mail(to: @user.email, subject:'reservation')
    end
end
