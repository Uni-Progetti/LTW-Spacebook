Rails.application.routes.draw do

  resources :quick_reservations
  resources :favourite_spaces
  resources :reservations
  resources :seats
  resources :temp_sps
  resources :spaces
  resources :temp_week_days
  resources :week_days
  resources :temp_deps
  resources :departments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
