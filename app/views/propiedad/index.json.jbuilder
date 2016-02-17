json.array!(@propiedad) do |propiedad|
  json.extract! propiedad, :id, :NOMBRE_PROPIEDAD, :EJEMPLO_VALOR_PROPIEDAD
  json.url propiedad_url(propiedad, format: :json)
end
