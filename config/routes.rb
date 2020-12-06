Rails.application.routes.draw do
  resources :ccards
  resources :addresses
  resources :packages
  resources :customers
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'movies#index'
end
