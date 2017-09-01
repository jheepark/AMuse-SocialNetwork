class LikesController < ApplicationController
  def create
    @like = Like.new
    @current_user.likes << @like
    artwork = Artwork.find params[:artwork_id]
    artwork.likes << @like

    redirect_to request.referer
  end

  def destroy
    like = @current_user.likes.find_by artwork_id: params[:id]

    like.destroy

    redirect_to request.referer
  end
end
