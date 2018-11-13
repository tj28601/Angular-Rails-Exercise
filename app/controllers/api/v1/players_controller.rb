class Api::V1::PlayersController < ApplicationController
  def index
    # all_players = Player.all
    @players = Player.limit(params[:limit]).offset(params[:offset])
    render json: @players

    # @players = Player.all
    # paginate json: @players

    # @players = Player.paginate(:page => params[:page], :per_page => 10)
  end
end
