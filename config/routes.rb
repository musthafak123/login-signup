Rails.application.routes.draw do
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  #resources :users

  resources :users
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to:"home_user#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
