json.array!(@drivers) do |driver|
  json.extract! driver, :id, :nombre, :paterno, :materno, :sindical
  json.url driver_url(driver, format: :json)
end
