class MailingList < ApplicationMailer
	default :from => 'dev@strongarmtech.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def mailing_list_confirmation(newsletter_email)
    @newsletter_email = newsletter_email
    mail( :to => @newsletter_email.email, :bcc => 'dev@strongarmtech.com',
    :subject => 'Welcome from StrongArm Tech' )
  end
end
