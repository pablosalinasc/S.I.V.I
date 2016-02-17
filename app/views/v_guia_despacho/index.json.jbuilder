json.array!(@v_guia_despacho) do |v_guia_despacho|
  json.extract! v_guia_despacho, :id, :ID_GUIA_DESPACHO, :ID_COMPRA, :ID_PROVEEDOR, :FECHA_SALIDA_GUIA, :FECHA_RECEPCION_GUIA, :TIPO_MOVIMIENTO_GUIA, :VEHICULO_GUIA, :DESTINO_GUIA, :DESPACHO_LOCAL_GUIA, :NOMBRE_BODEGUERO_ENCARGADO, :NOMBRE_PROVEEDOR, :LOCAL_DESPACHO
  json.url v_guia_despacho_url(v_guia_despacho, format: :json)
end
