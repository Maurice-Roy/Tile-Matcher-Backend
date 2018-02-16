class Api::V1::TilesetsController < ApplicationController
  def index
    @tilesets = Tileset.all
    render json: @tilesets
  end

  def show
    @tiles = Tile.where(tileset_id: params[:id])
    render json: @tiles
  end

  def update
    
  end
end
