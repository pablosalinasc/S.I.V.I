json.array!(@v_detalle_cambio) do |v_detalle_cambio|
  json.extract! v_detalle_cambio, :id, :ID_DEVOLUCION, :LINEA_CAMBIO, :NOMBRE_UNICO_INSUMO, :CANTIDAD_CAMBIO, :PRECIO_CAMBIO, :DESCUENTO_CAMBIO
  json.url v_detalle_cambio_url(v_detalle_cambio, format: :json)
end
