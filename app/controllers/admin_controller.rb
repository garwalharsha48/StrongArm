class AdminController < ApplicationController
	before_action :authenticate_admin!
	layout 'admin'
	
  def dashboard
  	@newsletter_emails = NewsletterEmail.all
  	respond_to do |format|
	    format.html
	    format.csv do
	      headers['Content-Disposition'] = "attachment; filename=\"mailing-list\""
	      headers['Content-Type'] ||= 'text/csv'
	    end
	  end
  end

  def newsletter
  	@newsletter_emails = NewsletterEmail.all
  end
end
