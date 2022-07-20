class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @gyms = @user.gyms

    favorites = Favorite.where(user_id: current_user.id).pluck(:gym_id)
    @favorite_list = Gym.find(favorites)
  end
end
