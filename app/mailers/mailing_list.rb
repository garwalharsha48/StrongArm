class MailingList < ApplicationMailer
	default :from => 'Support@strongarmtech.com'

  def mailing_list_confirmation(newsletter_email)
    @newsletter_email = newsletter_email
    mail( :to => @newsletter_email.email, :bcc => 'Support@strongarmtech.com, Rahul@strongarmtech.com, dev@strongarmtech.com',
    :subject => 'Welcome from StrongArm Tech' )
  end
end
