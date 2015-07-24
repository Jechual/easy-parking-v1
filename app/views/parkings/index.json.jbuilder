json.array!(@parkings) do |parking|
  json.extract! parking, :id, :name, :address, :contact, :telephone, :schedule, :price, :availability, :comments, :image, :active
  json.url parking_url(parking, format: :json)
end
