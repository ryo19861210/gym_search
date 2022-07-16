Rails.application.routes.draw do
  devise_for :users
    root to: 'gyms#index'
  resources :gyms, only: [:index, :show] do
  collection do
    get 'search'
    resource :favorites, only: [:destory, :create]
  end
  end
  end
