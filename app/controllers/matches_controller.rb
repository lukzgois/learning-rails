class MatchesController < ApplicationController
  def new
    @player = Player.find(params[:player_id])
    @maps = Map.all
    @match = Match.new
  end

  def create
    @player = Player.find(params[:player_id])
    @map = Map.find(params[:match][:map])

    @player.matches.create(matches_params.merge(map: @map))
    redirect_to player_path(@player)
  end

  def destroy
    player = Player.find(params[:player_id])
    player.matches.find(params[:id]).destroy

    redirect_to player_path(player)
  end

  private

    def matches_params
      params.require(:match).permit(:kills, :assists, :deaths)
    end
end
