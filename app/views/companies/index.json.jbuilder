json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :telephone, :contact, :email
  json.url company_url(company, format: :json)
end
