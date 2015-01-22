class AdminController < ApplicationController
	before_action :authenticate_admin!
  def dashboard
  end

  def newsletter
  	@newsletter_emails = NewsletterEmail.all
  end
end
