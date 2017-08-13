class ApplicationMailer < ActionMailer::Base
  default from: 'sebasdeldimx@gmail.com'
  layout 'mailer'

  # Sends a mail when a message is sent to it's recipent
  def message_recipent_notification(sender,recipent)
    @recipent = recipent
    @sender = sender
    mail(to: recipent.email, subject: 'Hey, you just got a new message !')
  end

end
