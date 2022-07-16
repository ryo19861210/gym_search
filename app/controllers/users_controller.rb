class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @gyms = @user.gyms
    @favorite_gyms = @user.favorite_gyms
  end
end
