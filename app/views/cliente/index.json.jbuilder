json.array!(@cliente) do |cliente|
  json.extract! cliente, :id, :NOMBRE_CLIENTE, :RUT_CLIENTE, :CORREO_CLIENTE, :TELEFONO_CLIENTE, :FECHA_NACIMIENTO_CLIENTE, :DESCUENTO_CLIENTE
  json.url cliente_url(cliente, format: :json)
end
