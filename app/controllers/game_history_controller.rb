class GameHistoryController < ApplicationController
  def index
    games = GameHistory.all
    render json: games, status: :ok, each_serializer: GameHistorySerializer
  end

  def create
    game_history = GameHistory.new(creation_params)
    game_history.save!
    render json: game_history, status: :ok, serializer: GameHistorySerializer
  end

  private

  def creation_params
    params.require(:game_history).permit(:winner, :loser)
  end
end
