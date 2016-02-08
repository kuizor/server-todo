require_relative "tipo_direccion"
class Direccion
	attr_accessor :calle, :ciudad, :pais, :tipo_direccion
	def initialize (pais, ciudad, calle)
		@pais = pais
		@ciudad = ciudad
		@calle = calle
		@tipo_direccion = TipoDireccion.new
	end

	def es_fiscal
		@tipo_direccion.tipo = "FISCAL"
	end
	def es_cobro
		@tipo_direccion.tipo = "COBRO"
	end
	def es_habitacion
		@tipo_direccion.tipo = "HABITACION"
	end
	def es_fiscal?
		@tipo_direccion.tipo == "FISCAL"
	end
	def es_cobro?
		@tipo_direccion.tipo == "COBRO"
	end
	def es_habitacion?
		@tipo_direccion.tipo == "HABITACION"
	end
end
