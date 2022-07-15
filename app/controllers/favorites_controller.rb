class FavoritesController < ApplicationController
  def index
    @gyms = Gym.all
  end
end
