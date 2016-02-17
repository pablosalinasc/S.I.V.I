json.array!(@insumo_local) do |insumo_local|
  json.extract! insumo_local, :id, :ID_INSUMO, :ID_LOCAL, :STOCK_INSUMO_LOCAL
  json.url insumo_local_url(insumo_local, format: :json)
end
