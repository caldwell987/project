Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  # get 'users/:username', to: 'users#show'
  # get 'users/', to: 'users#index'

  resources :users
  resources :friends
  resources :contacts

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
