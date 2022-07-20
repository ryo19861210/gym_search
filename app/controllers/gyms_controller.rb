class GymsController < ApplicationController
  def index
    @gyms = Gym.all
    @team = Team.new(team_params)
  end

  def show
    @gym = Gym.find(params[:id])
    gon.lat = @gym.lat.to_f
    gon.lng = @gym.lng.to_f
  end

  def search
    @gyms = Gym.search(params[:keyword])
  end

  private

  def team_params
    params.require(:team).permit(:customer_id, :active_until, :stripe_subscription_id, :plan_id).merge(user_id: current_user.id)
  end
end
