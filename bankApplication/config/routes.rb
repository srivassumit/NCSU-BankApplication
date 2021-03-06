Rails.application.routes.draw do

  get 'sessions/new'

  get 'signup' => 'users#new'
  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :accounts
  resources :friends
  resources :transactions

  root 'sessions#new'
end
