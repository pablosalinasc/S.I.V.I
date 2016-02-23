json.array!(@v_detalle_venta) do |v_detalle_venta|
  json.extract! v_detalle_venta, :id, :ID_VENTA, :LINEA_VENTA, :NOMBRE_UNICO_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA
  json.url v_detalle_venta_url(v_detalle_venta, format: :json)
end
