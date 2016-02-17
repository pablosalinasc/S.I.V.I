json.array!(@vendedor) do |vendedor|
  json.extract! vendedor, :id, :ID_LOCAL
  json.url vendedor_url(vendedor, format: :json)
end
