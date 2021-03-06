class RequestMailer < ApplicationMailer
    default from: 'taskleaf1237@gmail.com'

    def creation_email(user, event)
        @user = user
        @event = event
        mail(
            subject: 'キャンセルリクエスト受付メール',
            to: @user.email,
        )
    end
end
