json.array!(@detalle_cambio_insumo) do |detalle_cambio_insumo|
  json.extract! detalle_cambio_insumo, :id, :ID_DEVOLUCION, :LINEA_CAMBIO, :ID_INSUMO, :PRECIO_CAMBIO, :CANTIDAD_CAMBIO, :DESCUENTO_CAMBIO
  json.url detalle_cambio_insumo_url(detalle_cambio_insumo, format: :json)
end
