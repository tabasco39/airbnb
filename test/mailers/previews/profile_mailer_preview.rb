# Preview all emails at http://localhost:3000/rails/mailers/profile_mailer
class ProfileMailerPreview < ActionMailer::Preview
    def welcome_email
        ProfileMailer.with(user: User.first).welcome_email
      end
end
