Rails.application.routes.draw do
<<<<<<< HEAD
  resources :account
  resources :properties
  devise_for :accounts
  # Set Views/Home/index is the main page
  root 'home#index'
  get 'home/index', to: 'home#index'
  
=======
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
>>>>>>> 83bc9d9fdb3d63dd57a339556f862d2abee454e2
end
