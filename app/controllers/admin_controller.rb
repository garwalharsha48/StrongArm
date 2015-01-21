class AdminController < ApplicationController
  def dashboard
  end

  def newsletter
  	@newsletter_emails = NewsletterEmail.all
  end
end
