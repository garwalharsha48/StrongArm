require 'rails_helper'

RSpec.describe AdminController, :type => :controller do
  let(:admin) {FactoryGirl.create(:admin)}

  describe "GET dashboard" do
    it "returns http success" do
      get :dashboard
      sign_in admin
      expect(response).to have_http_status(302)
    end
  end

  describe "GET newsletter" do
    it "returns http success" do
      get :newsletter
      sign_in admin
      expect(response).to have_http_status(302)

    end
  end

end
