require 'rails_helper'

RSpec.describe "LodgingConfirmations", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/lodging_confirmations/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/lodging_confirmations/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/lodging_confirmations/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/lodging_confirmations/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/lodging_confirmations/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
