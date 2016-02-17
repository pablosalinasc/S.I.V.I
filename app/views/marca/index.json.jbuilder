json.array!(@marca) do |marca|
  json.extract! marca, :id, :NOMBRE_MARCA
  json.url marca_url(marca, format: :json)
end
