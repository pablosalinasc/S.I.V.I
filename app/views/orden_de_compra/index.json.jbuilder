json.array!(@orden_de_compra) do |orden_de_compra|
  json.extract! orden_de_compra, :id, :ID_PROVEEDOR, :ID_COTIZACION, :ID_ESTADO_COMPRA, :FECHA_COMPRA, :MONTO_TOTAL_COMPRA
  json.url orden_de_compra_url(orden_de_compra, format: :json)
end
