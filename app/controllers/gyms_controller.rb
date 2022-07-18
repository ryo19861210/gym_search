class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def search
    @gyms = Gym.search(params[:keyword])
  end
end
