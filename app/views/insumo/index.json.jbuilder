json.array!(@insumo) do |insumo|
  json.extract! insumo, :id, :ID_TIPO_INSUMO, :PRECIO_INSUMO, :NOMBRE_UNICO_INSUMO
  json.url insumo_url(insumo, format: :json)
end
