class Api::V1::PlayersController < ApplicationController
  def index
    all_players = Player.all
    render json: all_players
  end
end
