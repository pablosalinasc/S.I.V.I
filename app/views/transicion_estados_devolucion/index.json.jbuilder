json.array!(@transicion_estados_devolucion) do |transicion_estados_devolucion|
  json.extract! transicion_estados_devolucion, :id, :ID_ESTADO_DEVOLUCION_DESDE, :ID_ESTADO_DEVOLUCION_HASTA
  json.url transicion_estados_devolucion_url(transicion_estados_devolucion, format: :json)
end
