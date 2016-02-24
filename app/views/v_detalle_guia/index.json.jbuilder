json.array!(@v_detalle_guia) do |v_detalle_guia|
  json.extract! v_detalle_guia, :id, :ID_GUIA_DESPACHO, :LINEA_GUIA, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_GUIA, :PRECIO_GUIA, :NOMBRE_UNICO_INSUMO
  json.url v_detalle_guia_url(v_detalle_guia, format: :json)
end
