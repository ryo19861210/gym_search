Rails.application.routes.draw do
  devise_for :users
    root to: 'gyms#index'
  resources :gyms, only: [:index, :show] do
    resource :favorites, only: [:index, :destroy, :create]
  collection do
    get 'search'
  end
  end
  end
