Rails.application.routes.draw do

  # get 'users/:username', to: 'users#show'
  # get 'users/', to: 'users#index'

  resources :users
  resources :friends
  resources :contacts

  get '/register', to: 'users#new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
