json.array!(@v_codigo_proveedor) do |v_codigo_proveedor|
  json.extract! v_codigo_proveedor, :id, :ID_CODIGO_PROVEEDOR, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :NOMBRE_PROVEEDOR, :NOMBRE_UNICO_INSUMO
  json.url v_codigo_proveedor_url(v_codigo_proveedor, format: :json)
end
