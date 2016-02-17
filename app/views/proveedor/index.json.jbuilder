json.array!(@proveedor) do |proveedor|
  json.extract! proveedor, :id, :NOMBRE_PROVEEDOR, :PAIS_PROVEEDOR, :CIUDAD_PROVEEDOR, :DIRECCION_PROVEEDOR, :CORREO_PROVEEDOR
  json.url proveedor_url(proveedor, format: :json)
end
