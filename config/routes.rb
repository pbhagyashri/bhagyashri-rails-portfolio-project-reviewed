Rails.application.routes.draw do

  root 'restaurants#index'

  resources :restaurant
  resources :reviews

  get 'signup' => 'users#new', as: :signup
  post 'users' => 'users#create', as: :users

  get 'login' => 'sessions#new', as: :login
  post 'sessions' => 'sessions#create', as: :sessions
  get 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
