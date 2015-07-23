json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :schedule, :price, :contact, :company_id
  json.url service_url(service, format: :json)
end
