Rails.application.routes.draw do
  resources :appointments
  resources :houses
  resources :users
  
  #signing up
  get '/signup', to: 'users#new'

  #logging in

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

 
end
