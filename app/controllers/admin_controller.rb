class AdminController < ApplicationController
	before_action :authenticate_admin!
	layout 'admin'
	
  def dashboard
  	@newsletter_emails = NewsletterEmail.all
  end

  def newsletter
  	@newsletter_emails = NewsletterEmail.all
  end
end
