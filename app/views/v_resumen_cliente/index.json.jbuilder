json.array!(@v_resumen_cliente) do |v_resumen_cliente|
  json.extract! v_resumen_cliente, :id, :ID_CLIENTE, :NOMBRE_CLIENTE, :RUT_CLIENTE, :CORREO_CLIENTE, :TELEFONO_CLIENTE, :EDAD, :DESCUENTO_CLIENTE, :VENTAS, :DEVOLUCIONES
  json.url v_resumen_cliente_url(v_resumen_cliente, format: :json)
end
