class PhotosController < ApplicationController
  def home
  end

  def show
    @photo = Photo.find params[:id]
  end

  def destroy
    photo = Photo.find params[:id]
    photo.destroy
    redirect_to root_path
  end
end
