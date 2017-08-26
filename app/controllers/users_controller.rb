class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to user
    else
      render :new
    end
  end

  def edit
    redirect_to user unless @current_user.id == params[:id].to_i
    @user = User.find params[:id]
  end

  def show
    @user = User.find params[:id]
  end

  def update
    user = @current_user
    user = User.find params[:id]
    user.update user_params
    redirect_to user
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:image, :name, :email, :location, :password, :password_confirmation)
  end
end
