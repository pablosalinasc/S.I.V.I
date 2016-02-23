json.array!(@v_detalle_devolucion) do |v_detalle_devolucion|
  json.extract! v_detalle_devolucion, :id, :ID_DEVOLUCION, :LINEA_DEVOLUCION, :NOMBRE_UNICO_INSUMO, :CANTIDAD_PRODUCTOS
  json.url v_detalle_devolucion_url(v_detalle_devolucion, format: :json)
end
