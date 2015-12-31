json.array!(@trucks) do |truck|
  json.extract! truck, :id, :numero, :titular_id
  json.url truck_url(truck, format: :json)
end
