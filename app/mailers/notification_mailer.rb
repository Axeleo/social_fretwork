class NotificationMailer < ApplicationMailer
    default from: 'the-royal-we@social-fretwork.com'
    layout 'mailer'

    def test_email(user)
        @user = {email: "leah.eramo@gmail.com", name: "Miss Reah"}
        mail(to: @user.email, subject: 'Sample Email')
    end
end
