json.array!(@tipo_insumo) do |tipo_insumo|
  json.extract! tipo_insumo, :id, :NOMBRE_INSUMO, :COMPATIBILIDAD_INSUMO
  json.url tipo_insumo_url(tipo_insumo, format: :json)
end
