json.array!(@codigo_proveedor) do |codigo_proveedor|
  json.extract! codigo_proveedor, :id, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO
  json.url codigo_proveedor_url(codigo_proveedor, format: :json)
end
