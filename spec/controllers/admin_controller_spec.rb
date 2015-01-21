require 'rails_helper'

RSpec.describe AdminController, :type => :controller do

  describe "GET dashboard" do
    it "returns http success" do
      get :dashboard
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET newsletter" do
    it "returns http success" do
      get :newsletter
      expect(response).to have_http_status(:success)
    end
  end

end
