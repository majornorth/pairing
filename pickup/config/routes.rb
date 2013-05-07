Pickup::Application.routes.draw do

  resources :events, :activities, :quotes, :users
  root :to => "events#index"
end
