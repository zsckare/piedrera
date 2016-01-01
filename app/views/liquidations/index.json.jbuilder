json.array!(@liquidations) do |liquidation|
  json.extract! liquidation, :id, :camion, :driver_id, :turno, :efectivo, :gastos, :terreno, :ahorro, :otro
  json.url liquidation_url(liquidation, format: :json)
end
