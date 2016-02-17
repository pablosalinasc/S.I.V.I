json.array!(@propiedad_valor) do |propiedad_valor|
  json.extract! propiedad_valor, :id, :ID_PROPIEDAD, :ID_INSUMO, :VALOR
  json.url propiedad_valor_url(propiedad_valor, format: :json)
end
