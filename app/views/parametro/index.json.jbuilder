json.array!(@parametro) do |parametro|
  json.extract! parametro, :id, :NOMBRE_PARAMETRO, :VALOR_PARAMETRO
  json.url parametro_url(parametro, format: :json)
end
