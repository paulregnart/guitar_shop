json.array!(@guitars) do |guitar|
  json.extract! guitar, :id, :model, :make, :price
  json.url guitar_url(guitar, format: :json)
end
