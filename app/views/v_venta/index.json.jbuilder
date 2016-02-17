json.array!(@v_venta) do |v_venta|
  json.extract! v_venta, :id, :ID_VENTA, :NOMBRE_VENDEDOR, :NOMBRE_CLIENTE, :DIRECCION_LOCAL
  json.url v_venta_url(v_venta, format: :json)
end
