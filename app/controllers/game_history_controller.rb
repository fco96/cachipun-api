class GameHistoryController < ApplicationController
  def index
    render json: {message: "holi"}, status: :ok
  end
end
