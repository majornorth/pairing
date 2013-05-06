Pickup::Application.routes.draw do
  resources :events, :activities, :quotes
  root :to => "events#index"
end
