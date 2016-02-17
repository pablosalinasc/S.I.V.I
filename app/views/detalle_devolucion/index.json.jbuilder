json.array!(@detalle_devolucion) do |detalle_devolucion|
  json.extract! detalle_devolucion, :id, :ID_DEVOLUCION, :LINEA_DEVOLUCION, :ID_INSUMO, :CANTIDAD_PRODUCTOS
  json.url detalle_devolucion_url(detalle_devolucion, format: :json)
end
