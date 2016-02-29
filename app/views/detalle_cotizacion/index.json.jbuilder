json.array!(@detalle_cotizacion) do |detalle_cotizacion|
  json.extract! detalle_cotizacion, :id, :ID_COTIZACION, :LINEA_COTIZACION, :ID_CODIGO_PROVEEDOR, :CANTIDAD_COTIZACION, :PRECIO_COTIZACION
  json.url detalle_cotizacion_url(detalle_cotizacion, format: :json)
end
