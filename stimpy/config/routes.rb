Stimpy::Application.routes.draw do
  root :to => "characters#index"
  resources :characters  
end
