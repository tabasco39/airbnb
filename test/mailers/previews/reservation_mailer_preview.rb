# Preview all emails at http://localhost:3000/rails/mailers/reservation_mailer
class ReservationMailerPreview < ActionMailer::Preview

    def reservation
        ReservationMailer.reservation(User.last)
    end

end
