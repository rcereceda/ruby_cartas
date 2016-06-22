require_relative "carta"

class Baraja
	def initialize()
		@mazo = []
		crear
	end

	def crear
		pinta = ["Espadas", "Corazones", "Tréboles", "Diamantes"]
		numero = ["As", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

		pinta.each do |p|
			numero.each do |n|
				@mazo << Carta.new(p,n)
			end
		end
	end

	def barajar
		puts "cartas: #{@mazo.length}"
		@mazo.shuffle!
	end

	def dar_carta
		@mazo.pop
	end

	def recibir_carta(carta)
		@mazo.unshift(carta)
	end
end