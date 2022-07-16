class FavoritesController < ApplicationController
  before_action :set_gym
  def create
    @favorite = Favorite.new(user_id: current_user.id, gym_id: params[:gym_id])
    @favorite.save
    redirect_to root_path
  end

  def destroy
    @favorite = current_user.favorites.find_by(gym_id: @gym.id)
    @favorite.destroy
    redirect_to root_path
  end

  private

  def set_gym
    @gym = Gym.find(params[:gym_id])
  end
end
