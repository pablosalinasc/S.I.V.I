json.array!(@tipo_insumo_propiedad) do |tipo_insumo_propiedad|
  json.extract! tipo_insumo_propiedad, :id, :ID_PROPIEDAD, :PRINCIPAL_PROPIEDAD, :ID_TIPO_INSUMO
  json.url tipo_insumo_propiedad_url(tipo_insumo_propiedad, format: :json)
end
