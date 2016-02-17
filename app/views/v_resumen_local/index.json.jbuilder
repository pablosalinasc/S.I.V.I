json.array!(@v_resumen_local) do |v_resumen_local|
  json.extract! v_resumen_local, :id, :ID_LOCAL, :DIRECCION_LOCAL, :CANTIDAD_VENDEDORES, :CANTIDAD_BODEGUEROS, :VENTAS_ULTIMO_MES, :DEVOLUCIONES_ULTIMO_MES
  json.url v_resumen_local_url(v_resumen_local, format: :json)
end
