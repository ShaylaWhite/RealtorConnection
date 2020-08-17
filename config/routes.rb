Rails.application.routes.draw do

  root to: 'sessions#home'

  resources :appointments
  resources :houses
  resources :users
  
  #signing up
  get '/signup' => 'users#new'

  #logging in
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

 
end
