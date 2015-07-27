json.array!(@ratings) do |rating|
  json.extract! rating, :id, :idrating, :point, :active, :comment, :parking
  json.url rating_url(rating, format: :json)
end
