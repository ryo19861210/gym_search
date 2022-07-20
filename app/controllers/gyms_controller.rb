class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
    gon.lat = @gym.lat.to_f
    gon.lng = @gym.lng.to_f
  end

  def search
    @gyms = Gym.search(params[:keyword])
  end
end
