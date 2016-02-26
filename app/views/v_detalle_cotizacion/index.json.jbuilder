json.array!(@v_detalle_cotizacion) do |v_detalle_cotizacion|
  json.extract! v_detalle_cotizacion, :id, :ID_COTIZACION, :LINEA_COTIZACION, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_COTIZACION, :PRECIO_COTIZACION, :NOMBRE_UNICO_INSUMO
  json.url v_detalle_cotizacion_url(v_detalle_cotizacion, format: :json)
end
