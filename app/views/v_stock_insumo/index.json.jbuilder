json.array!(@v_stock_insumo) do |v_stock_insumo|
  json.extract! v_stock_insumo, :id, :ID_INSUMO, :DIRECCION_LOCAL, :STOCK_INSUMO_LOCAL
  json.url v_stock_insumo_url(v_stock_insumo, format: :json)
end
