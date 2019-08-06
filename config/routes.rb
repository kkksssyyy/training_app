Rails.application.routes.draw do
  root 'pages#home'

  get '/help', to: 'pages#help'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
