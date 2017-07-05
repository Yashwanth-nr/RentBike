json.extract! bike, :id, :manufacturer_id, :name, :description, :image_url, :created_at, :updated_at
json.url bike_url(bike, format: :json)
