class Gym < ApplicationRecord
  has_many :favorites

  def self.search(search)
    if search != ''
      Gym.where('name LIKE(?)', "%#{search}%").or(Gym.where('address LIKE(?)', "%#{search}%"))
    else
      Gym.all
    end
  end
end
