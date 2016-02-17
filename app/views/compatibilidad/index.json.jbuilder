json.array!(@compatibilidad) do |compatibilidad|
  json.extract! compatibilidad, :id, :ID_MARCA, :ID_INSUMO
  json.url compatibilidad_url(compatibilidad, format: :json)
end
