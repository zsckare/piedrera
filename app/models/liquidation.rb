class Liquidation < ActiveRecord::Base
  belongs_to :driver

  def self.camion(numero)
  	where(:camion => numero)
  end
  
  def self.chofer(chofer)
  	where(:driver_id => chofer)
  end
  
  def self.rango(desde,hasta)
    where("fecha >= :init_edad AND fecha <= :fin_edad", {init_edad: desde, fin_edad: hasta})
  end

  def self.desde(desde)
    where("fecha >= :init_edad ", {init_edad: desde})
  end

  def self.avanzado(chofer,camion)
    where("driver_id = :init_edad AND camion = :fin_edad", {init_edad: chofer, fin_edad: camion})
  end

end
