class Carta
	attr_accessor :pinta, :numero
	def initialize(pinta, numero)
		@pinta = pinta
		@numero = numero
	end

	def to_s
		puts "#{@numero} de #{@pinta}"
	end
end