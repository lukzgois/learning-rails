class MapsController < ApplicationController
  def show
    @map = Map.find(params[:id])
  end

  def index
    @maps = Map.all
  end

  def new
    @map = Map.new
  end

  def create
    @map = Map.new(map_params)

    if @map.save
      redirect_to @map
    else
      render action: 'new'
    end
  end

  def edit
    @map = Map.find(params[:id])
  end

  def update
    @map = Map.find(params[:id])

    if @map.update(map_params)
      redirect_to @map
    else
      render 'edit'
    end
  end

  def destroy
    @map = Map.find(params[:id])
    @map.destroy

    redirect_to maps_path
  end

  private
    def map_params
      params.require(:map).permit(:name, :exhibition_name, :map_type)
    end
end
