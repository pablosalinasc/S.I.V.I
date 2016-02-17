json.array!(@transicion_estado_compra) do |transicion_estado_compra|
  json.extract! transicion_estado_compra, :id, :ID_ESTADO_COMPRA_DESDE, :ID_ESTADO_COMPRA_HASTA
  json.url transicion_estado_compra_url(transicion_estado_compra, format: :json)
end
