Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'logout', to: 'sessions#logout'
  
  root "home#index"

  # Routes for Google authentication
  get ‘auth/:provider/callback’, to: ‘sessions#googleAuth’
  get ‘auth/failure’, to: redirect(‘/’)
end
