Pickup::Application.routes.draw do
  resources :events
  root :to => "activities#index"
end
