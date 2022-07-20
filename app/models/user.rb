class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :phone, presence: true

  has_many :favorites, dependent: :destroy
  has_one :team

  def unsubscribe
    team = Team.find_by(user_id: id)
    team.destroy
  end
end
