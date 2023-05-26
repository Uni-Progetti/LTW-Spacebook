Rails.application.routes.draw do

  resources :site_current_dates
  resources :temp_deps
  resources :temp_week_days
  resources :temp_sps

  resources :departments
  resources :week_days
  resources :spaces
  resources :seats

  resources :reservations
  resources :quick_reservations
  resources :favourite_spaces

  root "home#index"

  # Generali
  get "/home", to: "home#index"
  post '/home', to: 'home#index', as: 'get_meteo_info'
  # leaflet ( .................... )
  get "/personal_area", to: "personal_area#index"
  get "/informations", to: "informations#index"

  # Accessibili dall'area personale utente
  get "/user_reservations", to: "reservations#reserved"
  get "/favourite_spaces", to: "favourite_spaces#index"

  # Admin
  get "/management", to: "management#index"

  # Dipartimenti
  get "/make_department", to: "temp_deps#new"
  post '/make_department', to: 'temp_deps#set_temp_wd', as: 'set_temp_wd'
  get "/manager_department", to: "departments#manager_department"
  post '/manager_department', to: 'departments#manager_map_initializer', as: 'manager_map_initializer'

  # Prenotazioni
  get "/make_reservation", to: "reservations#new"
  post '/make_reservation', to: 'reservations#set_department', as: 'set_department'
  post '/user_reservations', to: 'reservations#make_actions', as: 'make_actions'
  get "/make_quick_res", to: "quick_reservations#make_quick_res"

  post "/find_on_map", to:"home#find_on_map"

end
