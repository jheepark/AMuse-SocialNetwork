class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find params[:id]
  end

  def edit
    @artwork = Artwork.find params[:id]
    redirect_to user_path(artwork.user_id) unless @current_user.id == @artwork.user_id.to_i
  end

  def update
    artwork = Artwork.find params[:id]
    artwork.update artwork_params
    redirect_to root_path
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new artwork_params
    @artwork.save
    redirect_to root_path
  end

  def destroy
    artwork = Artwork.find params[:id]
    artwork.destroy
    redirect_to root_path
  end

  private
  def artwork_params
    params.require(:artwork).permit(:image, :user_id, :photo_id)
  end

end
