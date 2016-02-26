json.array!(@v_cotizacion) do |v_cotizacion|
  json.extract! v_cotizacion, :id, :ID_COTIZACION, :ID_PROVEEDOR, :FECHA_COTIZACION, :MONTO_TOTAL_COTIZACION, :NOMBRE_PROVEEDOR
  json.url v_cotizacion_url(v_cotizacion, format: :json)
end
