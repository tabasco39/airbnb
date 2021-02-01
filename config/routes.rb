Rails.application.routes.draw do
  resources :account
  resources :properties
  devise_for :accounts
  # Set Views/Home/index is the main page
  root 'home#index'
  get 'home/index', to: 'home#index'
  
end
