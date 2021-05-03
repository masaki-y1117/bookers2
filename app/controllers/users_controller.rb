class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def create
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
end
