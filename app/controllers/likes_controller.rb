class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.new like_params
    @like.user_id = @current_user.id
    @like.photo_id = params[:photo_id]
    @like.save
    redirect_to user_path(@like.user_id)
  end

  def destroy
    like = Like.find params[:id]
    like.destroy
    redirect_to user_path(@current_user.id)
  end

  private
  def like_params
    params.require(:like).permit(:user_id, :artwork_id)
  end

end
