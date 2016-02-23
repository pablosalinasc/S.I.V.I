json.array!(@v_compatibilidad) do |v_compatibilidad|
  json.extract! v_compatibilidad, :id, :ID_INSUMO, :ID_MARCA, :NOMBRE_MARCA
  json.url v_compatibilidad_url(v_compatibilidad, format: :json)
end
