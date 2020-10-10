require 'rails_helper'

RSpec.describe "GameHistories", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/game_history/index"
      expect(response).to have_http_status(:success)
    end
  end

end
