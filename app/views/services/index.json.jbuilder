json.array!(@services) do |service|
  json.extract! service, :id, :name, :price, :description, :active, :parking_id
  json.url service_url(service, format: :json)
end
