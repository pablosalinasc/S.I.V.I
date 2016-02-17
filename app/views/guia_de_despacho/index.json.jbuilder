json.array!(@guia_de_despacho) do |guia_de_despacho|
  json.extract! guia_de_despacho, :id, :ID_COMPRA, :ID_PROVEEDOR, :FECHA_SALIDA_GUIA, :FECHA_RECEPCION_GUIA, :TIPO_MOVIMIENTO_GUIA, :VEHICULO_GUIA, :DESTINO_GUIA, :DESPACHO_LOCAL_GUIA
  json.url guia_de_despacho_url(guia_de_despacho, format: :json)
end
