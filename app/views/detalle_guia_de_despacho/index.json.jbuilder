json.array!(@detalle_guia_de_despacho) do |detalle_guia_de_despacho|
  json.extract! detalle_guia_de_despacho, :id, :ID_GUIA_DESPACHO, :LINEA_GUIA, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_GUIA, :PRECIO_GUIA
  json.url detalle_guia_de_despacho_url(detalle_guia_de_despacho, format: :json)
end
