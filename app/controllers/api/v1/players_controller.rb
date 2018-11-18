class Api::V1::PlayersController < ApplicationController
  def index
    # all_players = Player.all
    @players = Player.limit(params[:limit]).offset(params[:offset])
    render json: @players

    # @players = Player.all
    # paginate json: @players

    # @players = Player.paginate(:page => params[:page], :per_page => 10)
  end
# def new
#   @player = Player.new
# end
  def create
    @player = Player.new(player_params)
    @player.save
    # binding.pry
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end
