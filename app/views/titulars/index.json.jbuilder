json.array!(@titulars) do |titular|
  json.extract! titular, :id, :nombre, :paterno, :materno
  json.url titular_url(titular, format: :json)
end
