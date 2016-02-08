class Cafetera

	#attr_accessor :estado

	def initialize(marca_cafe,tazas)
		@marca_cafe = marca_cafe
		@tazas = tazas
		@estado = "Apagado"
	end

	def boton_on_off
		if(@estado == "Apagado")
			@estado = "Encendido"
		end
	end

	def calentar
		if (@estado == "Encendido")
			puts "Calentando la maquina"
		else
			puts "Debe encender la Cafetera"
		end
	end

	def servir
		if (@tazas > 0 )
			@tazas += 1
		else
			puts "Se acabo el Cafe"
		end
	end

end


def ppal
	cafe = Cafetera.new('Fama de America',3)
	cafe.boton_on_off
	cafe.calentar
	while 
		cafe.servir
end

ppal