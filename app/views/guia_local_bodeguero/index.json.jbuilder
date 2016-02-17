json.array!(@guia_local_bodeguero) do |guia_local_bodeguero|
  json.extract! guia_local_bodeguero, :id, :ID_LOCAL, :ID_BODEGUERO, :ID_GUIA_DESPACHO
  json.url guia_local_bodeguero_url(guia_local_bodeguero, format: :json)
end
