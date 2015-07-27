json.array!(@customers) do |customer|
  json.extract! customer, :id, :idcustomer, :lastname, :name, :birthdate, :category, :celular, :dni, :active, :hobbies
  json.url customer_url(customer, format: :json)
end
