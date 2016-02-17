json.array!(@devolucion) do |devolucion|
  json.extract! devolucion, :id, :ID_VENTA, :ID_LOCAL, :ID_VENDEDOR, :ID_ESTADO_DEVOLUCION, :FECHA_DEVOLUCION, :MONTO_CAMBIO, :CANT_INSUMOS_NUEVOS_DEVOLUCION, :TIPO_DEVOLUCION, :COMENTARIO_DEVOLUCION, :INSUMOS_DEFECTUOSOS_DEVOLUCION
  json.url devolucion_url(devolucion, format: :json)
end
