require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET v22" do
    it "returns http success" do
      get :v22
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET ergohug" do
    it "returns http success" do
      get :ergohug
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET our_process" do
    it "returns http success" do
      get :our_process
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

end
