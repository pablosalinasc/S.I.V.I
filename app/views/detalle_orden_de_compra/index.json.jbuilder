json.array!(@detalle_orden_de_compra) do |detalle_orden_de_compra|
  json.extract! detalle_orden_de_compra, :id, :ID_COMPRA, :LINEA_COMPRA, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_COMPRA, :PRECIO_COMPRA
  json.url detalle_orden_de_compra_url(detalle_orden_de_compra, format: :json)
end
