json.extract! home_appliance, :id, :image, :brandname, :description, :condition, :location, :created_at, :updated_at
json.url home_appliance_url(home_appliance, format: :json)
