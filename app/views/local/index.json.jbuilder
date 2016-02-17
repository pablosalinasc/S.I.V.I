json.array!(@local) do |local|
  json.extract! local, :id, :DIRECCION_LOCAL
  json.url local_url(local, format: :json)
end
