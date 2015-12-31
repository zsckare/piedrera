json.array!(@turnos) do |turno|
  json.extract! turno, :id, :nombre
  json.url turno_url(turno, format: :json)
end
