json.array!(@detalle_venta) do |detalle_venta|
  json.extract! detalle_venta, :id, :ID_VENTA, :LINEA_VENTA, :ID_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA
  json.url detalle_venta_url(detalle_venta, format: :json)
end
