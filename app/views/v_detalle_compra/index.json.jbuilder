json.array!(@v_detalle_compra) do |v_detalle_compra|
  json.extract! v_detalle_compra, :id, :ID_COMPRA, :LINEA_COMPRA, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_COMPRA, :PRECIO_COMPRA, :NOMBRE_UNICO_INSUMO
  json.url v_detalle_compra_url(v_detalle_compra, format: :json)
end
