json.array!(@v_proveedor) do |v_proveedor|
  json.extract! v_proveedor, :id, :ID_PROVEEDOR, :NOMBRE_PROVEEDOR, :PAIS_PROVEEDOR, :CIUDAD_PROVEEDOR, :DIRECCION_PROVEEDOR, :CORREO_PROVEEDOR, :CANTIDAD_COTIZACIONES, :CANTIDAD_ORDENES_DE_COMPRA
  json.url v_proveedor_url(v_proveedor, format: :json)
end
