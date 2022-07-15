Rails.application.routes.draw do
  devise_for :users
    root to: 'gyms#index'
  resources :gyms, only: [:index, :show] do
  collection do
    get 'search'
    resources :favorites, only: [:index, :destory]
  end
  end
  end
