json.array!(@v_propiedad_valor) do |v_propiedad_valor|
  json.extract! v_propiedad_valor, :id, :ID_INSUMO, :ID_PROPIEDAD, :NOMBRE_PROPIEDAD, :VALOR
  json.url v_propiedad_valor_url(v_propiedad_valor, format: :json)
end
