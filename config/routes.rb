Rails.application.routes.draw do
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
end
