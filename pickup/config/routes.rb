Pickup::Application.routes.draw do

  resources :events, :activities, :quotes, :users, :attendees
  root :to => "events#index"
end
