require 'rails_helper'

RSpec.describe "Loggers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/logger/index"
      expect(response).to have_http_status(:success)
    end
  end

end
