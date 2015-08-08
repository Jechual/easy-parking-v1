json.array!(@ratings) do |rating|
  json.extract! rating, :id, :date, :score, :comment, :active, :parking_id
  json.url rating_url(rating, format: :json)
end
