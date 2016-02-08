#clase que instancia a un metodo protejido de otra clase para llamarlo
class MetodoPrivado
	def initialize
		metodo
	end
	private
	def metodo
		@variablePrivada = 32
		puts "Esto es un metodo privado en un constructor"
	end
end

class CallMetodo
	def initialize
		puts MetodoPrivado.new
	end
end

CallMetodo.new
