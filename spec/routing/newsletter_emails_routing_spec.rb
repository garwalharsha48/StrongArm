require "rails_helper"

RSpec.describe NewsletterEmailsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/newsletter_emails").to route_to("newsletter_emails#index")
    end

    it "routes to #new" do
      expect(:get => "/newsletter_emails/new").to route_to("newsletter_emails#new")
    end

    it "routes to #show" do
      expect(:get => "/newsletter_emails/1").to route_to("newsletter_emails#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/newsletter_emails/1/edit").to route_to("newsletter_emails#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/newsletter_emails").to route_to("newsletter_emails#create")
    end

    it "routes to #update" do
      expect(:put => "/newsletter_emails/1").to route_to("newsletter_emails#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/newsletter_emails/1").to route_to("newsletter_emails#destroy", :id => "1")
    end

  end
end
