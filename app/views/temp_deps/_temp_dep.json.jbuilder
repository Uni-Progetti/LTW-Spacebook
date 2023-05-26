json.extract! temp_dep, :id, :user_id, :name, :manager, :via, :civico, :cap, :citta, :provincia, :lat, :lon, :description, :floors, :number_of_spaces, :dep_map, :dep_event, :created_at, :updated_at
json.url temp_dep_url(temp_dep, format: :json)
