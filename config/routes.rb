Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, :controllers => {registrations: 'registrations'}
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
 
  root to: 'homes#index'

  resources :homes, only: [:show, :index]

  resources :houses do
    resources :reservations
  end
  resources :categories, only: [:show, :index]
  resources :locations, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
  resources :account
  resources :properties
  devise_for :accounts
  # Set Views/Home/index is the main page
  root 'home#index'
  get 'home/index', to: 'home#index'
  
>>>>>>> 47dcd1a141f7675a3645d91e790d7e06d39e30ca
end
