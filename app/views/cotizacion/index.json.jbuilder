json.array!(@cotizacion) do |cotizacion|
  json.extract! cotizacion, :id, :ID_PROVEEDOR, :FECHA_COTIZACION, :MONTO_TOTAL_COTIZACION
  json.url cotizacion_url(cotizacion, format: :json)
end
