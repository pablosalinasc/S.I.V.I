json.array!(@estado_orden_de_compra) do |estado_orden_de_compra|
  json.extract! estado_orden_de_compra, :id, :DESCRIPCION_ESTADO_COMPRA
  json.url estado_orden_de_compra_url(estado_orden_de_compra, format: :json)
end
