class MailingList < ApplicationMailer
	default :from => 'Support@strongarmtech.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def mailing_list_confirmation(newsletter_email)
    @newsletter_email = newsletter_email
    mail( :to => @newsletter_email.email, :bcc => 'Support@strongarmtech.com, Rahul@strongarmtech.com, dev@strongarmtech.com',
    :subject => 'Welcome from StrongArm Tech' )
  end
end
