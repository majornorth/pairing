Pickup::Application.routes.draw do
  resources :events, :activities
  root :to => "events#index"
end
