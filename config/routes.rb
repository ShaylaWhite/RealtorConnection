Rails.application.routes.draw do

  root to: 'sessions#home'

  #signing up
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #logging in
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  #logout
  delete '/logout' => 'sessions#destroy'

 
  resources :appointments
  resources :houses
  resources :users
end
