Pickup::Application.routes.draw do

  resources :events, :activities, :quotes, :users, :attendees
  resources :sessions, only: [:new, :create, :destroy]
  root :to => "events#index"

  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
end
