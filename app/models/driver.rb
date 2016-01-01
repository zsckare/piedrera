class Driver < ActiveRecord::Base
	has_many :liquidations
	def NombreCompleto
		"#{nombre} #{paterno} #{materno}"
	end
end
