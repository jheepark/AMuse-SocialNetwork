class CommentsController < ApplicationController
def create
  @comment = Comment.new comment_params
  @current_user.comments << @comment
  @comment.user_id = @current_user.id
  artwork = Artwork.find params[:artwork_id]
  artwork.comments << @comment
  redirect_to artwork
end

def destroy
  comment = Comment.find params[:id]
  comment.destroy
  redirect_to artworks_path
end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
