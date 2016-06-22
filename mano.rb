require_relative "baraja"

class Mano
	attr_reader :actual
	def	initialize(baraja)
		@actual = []
		baraja.barajar
		5.times do
			@actual.push(baraja.dar_carta)
		end	
	end

	def turno(baraja)
		baraja.recibir_carta(@actual.shift)
		@actual.push(baraja.dar_carta)
		baraja.barajar
	end
end