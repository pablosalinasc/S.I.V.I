json.array!(@v_resumen_vendedor) do |v_resumen_vendedor|
  json.extract! v_resumen_vendedor, :id, :ID_USUARIO, :NOMBRE_USUARIO, :RUT_USUARIO, :CORREO_USUARIO, :TELEFONO_USUARIO, :EDAD, :VENTAS, :DEVOLUCIONES
  json.url v_resumen_vendedor_url(v_resumen_vendedor, format: :json)
end
