json.array!(@v_orden_de_compra) do |v_orden_de_compra|
  json.extract! v_orden_de_compra, :id, :ID_COMPRA, :ID_PROVEEDOR, :ID_COTIZACION, :ID_ESTADO_COMPRA, :FECHA_COMPRA, :MONTO_TOTAL_COMPRA, :NOMBRE_PROVEEDOR, :FECHA_COTIZACION, :ESTADO_ACTUAL
  json.url v_orden_de_compra_url(v_orden_de_compra, format: :json)
end
