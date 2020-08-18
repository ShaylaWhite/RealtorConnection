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
  resources :users do 
    resources :houses, only: [:new, :create, :index ]
  end

  resources :houses do
    resources :appointments, only: [:new, :create,:index ]
  end 
end
