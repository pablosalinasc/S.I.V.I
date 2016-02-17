json.array!(@venta) do |venta|
  json.extract! venta, :id, :ID_VENDEDOR, :ID_LOCAL, :ID_CLIENTE, :FECHA_VENTA, :FORMA_DE_PAGO_VENTA, :DESCUENTO_TOTAL_VENTA, :MONTO_TOTAL_VENTA, :DESPACHADA_VENTA, :ID_BODEGUERO_DESPACHO, :NUMERO_BOLETA_VENTA
  json.url venta_url(venta, format: :json)
end
