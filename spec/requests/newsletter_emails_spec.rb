require 'rails_helper'

RSpec.describe "NewsletterEmails", :type => :request do
  describe "GET /newsletter_emails" do
    it "works! (now write some real specs)" do
      get newsletter_emails_path
      expect(response).to have_http_status(200)
    end
  end
end
