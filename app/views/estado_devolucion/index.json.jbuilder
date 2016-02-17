json.array!(@estado_devolucion) do |estado_devolucion|
  json.extract! estado_devolucion, :id, :DESCRIPCION_ESTADO_DEVOLUCION
  json.url estado_devolucion_url(estado_devolucion, format: :json)
end
