json.array!(@bodeguero) do |bodeguero|
  json.extract! bodeguero, :id, :ID_LOCAL
  json.url bodeguero_url(bodeguero, format: :json)
end
