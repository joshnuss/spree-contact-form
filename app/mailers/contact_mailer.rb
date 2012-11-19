class ContactMailer < ActionMailer::Base
  helper "spree/base"

  def message_email(message)
    subject = "#{Spree::Config[:site_name]} - Message from #{message.email}"

    @message = message
    mail(:bcc => message.topic.emails, :subject => subject, :reply_to => message.email) 
  end
end
