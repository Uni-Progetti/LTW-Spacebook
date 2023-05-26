json.extract! reservation, :id, :user_id, :department_id, :space_id, :seat_id, :email, :dep_name, :typology, :space_name, :floor, :seat_num, :start_date, :end_date, :state, :is_sync, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
