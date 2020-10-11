require 'rails_helper'

RSpec.describe GameHistoryController, type: :controller do
  let(:amount_of_game_histories){ GameHistory.all.size }

  before(:all) do
    GameHistory.create(winner: "Player 1", loser: "Player")
  end

  describe "GET #index" do
    context "gets the game histories" do
      subject(:response) { get :index }
      it "has status 200" do
        expect(response).to have_http_status(200)
      end

      it 'returns all the game histories' do
        expect(JSON.parse(response.body).size).to eq(amount_of_game_histories)
      end
    end
  end

  describe "POST #create" do
    let(:creation_params) {{game_history: {winner: "New winner name", loser: "New loser name"}}}

    context "succesfully creates a game history" do
      subject(:response) { post :create, params: creation_params }
      it "has status 200" do
        expect(response).to have_http_status(200)
      end

      it 'returns the new game history' do
        resp = JSON.parse(response.body, symbolize_names: true)
        expect(resp[:winner]).to eq(creation_params[:game_history][:winner])
        expect(resp[:loser]).to eq(creation_params[:game_history][:loser])
      end
    end

    context "fails to create a game history" do
      let(:invalid_params) { {game_history: {winner: "New winner name"}} }
      subject(:response) { post :create, params: invalid_params }
      it "has status 422" do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

end
