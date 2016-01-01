class Liquidation < ActiveRecord::Base
  belongs_to :driver

  def self.camion(numero)
  	where(:camion => numero)
  end
  def self.chofer(chofer)
  	where(:driver_id => chofer)
  end
  def self.rango(desde,hasta)
  	where("fecha >= ?", desde)
  end

end
