class Liquidation < ActiveRecord::Base
  belongs_to :driver

  def self.camion(numero)
  	where(:camion => numero).order("created_at DESC")
  end
  def self.chofer(chofer)
  	where("driver_id == ?", chofer).order("created_at DESC")
  end
  def self.rango(desde,hasta)
  	where("fecha >= ?", desde).order("created_at DESC")
  end

  def self.advanced(chofer,numero,desde,hasta)
    where("driver_id == ?", chofer, "camion == ?", numero).order("created_at DESC")
  end

end
