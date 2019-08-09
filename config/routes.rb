Rails.application.routes.draw do
  root to: "tasks#index"

  get 'login', to: 'sessions#new'

  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  resources :tasks
  
end