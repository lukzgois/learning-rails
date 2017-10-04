class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
  end

  def index
    @players = Player.all
  end

  def edit
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to @player
    else
      render action: 'new'
    end
  end

  def update
    @player = Player.find(params[:id])

    if @player.update(player_params)
      redirect_to @player
    else
      render action: 'edit'
    end
  end

  def destroy
    Player.find(params[:id]).destroy

    redirect_to players_path
  end

  private
    def player_params
      params.require(:player).permit(:name, :age)
    end
end
