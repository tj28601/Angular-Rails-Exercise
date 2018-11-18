class PlayersController < ApplicationController
  def index
  end
  def create
  end

  protected
  
  def player_params
    params.require(:player).permit(:name)
  end
end
