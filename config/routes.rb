Rails.application.routes.draw do
  devise_for :users
    root to: 'gyms#index'
  resources :teams, only: [:new, :create, :destroy]
  resources :gyms, only: [:index, :show] do
  collection do
    get 'search'
  end
  end
  end
