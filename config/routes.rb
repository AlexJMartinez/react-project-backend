Rails.application.routes.draw do

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :secrets
  resources :users
 
end
