Rails.application.routes.draw do
  devise_for :users
  root to: 'public#index'
  resources :houses do
    resources :reservations
  end
  resources :categories, only: [:show, :index]
  resources :locations, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
