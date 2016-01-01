class Titular < ActiveRecord::Base
	has_many :trucks
	
	def NombreCompleto
		"#{nombre} #{paterno} #{materno}"
	end
end
