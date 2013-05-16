Pickup::Application.routes.draw do

  resources :events, :activities, :quotes, :users
  resources :sessions, only: [:new, :create, :destroy]
  root :to => "events#index"

  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/join', to: 'events#join'
  match '/leave', to: 'events#leave'
end
