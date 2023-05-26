json.extract! quick_reservation, :id, :user_id, :department_id, :space_id, :email, :dep_name, :typology, :space_name, :created_at, :updated_at
json.url quick_reservation_url(quick_reservation, format: :json)
