class ContactFormMailer < ApplicationMailer
	default :from => 'Support@strongarmtech.com'

  def contact_form_submission(contact_form)
    @contact_form = contact_form
    mail( :to => 'Support@strongarmtech.com, Rahul@strongarmtech.com, dev@strongarmtech.com',
    :subject => 'Contact form submission' )
  end
end
