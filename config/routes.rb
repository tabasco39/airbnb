Rails.application.routes.draw do
  devise_for :users
  root to: 'public#index'
  resources :houses
  resources :categories, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
