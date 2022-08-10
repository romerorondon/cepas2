Rails.application.routes.draw do
  
  resources :enologos
  resources :vino_cepas
  resources :cepas
  resources :vinos
  devise_for :users
  root to: "home#index"
end
