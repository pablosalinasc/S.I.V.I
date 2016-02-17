json.array!(@v_resumen_bodeguero) do |v_resumen_bodeguero|
  json.extract! v_resumen_bodeguero, :id, :ID_USUARIO, :NOMBRE_USUARIO, :RUT_USUARIO, :CORREO_USUARIO, :TELEFONO_USUARIO, :EDAD, :VENTAS, :COMPRAS
  json.url v_resumen_bodeguero_url(v_resumen_bodeguero, format: :json)
end
