json.extract! booking, :id, :start_datetime, :end_datetime, :bike_id, :user_id, :confirmed, :is_available, :created_at, :updated_at
json.url booking_url(booking, format: :json)
