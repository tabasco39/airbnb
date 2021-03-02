class ProfileMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def welcome_email
      @reservation = params[:reservation]
      @url  = 'http://localhost/'
      mail(to: Reservation.last.house.user.email, subject: 'Welcome to My Awesome Site')
    end
end
