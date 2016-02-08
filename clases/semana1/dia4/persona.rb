require_relative "direccion"

class Persona
	attr_accessor :nombre, :apellido, :direcciones
	def initialize (nombre, apellido)
		@nombre = nombre
		@apellido = apellido
		@direcciones = Array.new
	end

	def agregar_direccion(direccion)
		@direcciones.push(direccion)
	end
	#suponiendo que se tenga el indice del array
	def eliminar_direccion(index)
		@direcciones.delete_at(index)
	end

	def numero_direcciones_habitcion
		@direcciones.select{|i| i.es_habitacion?}.count
	end

	def buscar_direccion_por_tipo(tipo,ciudad)
		@direcciones.select{|i| i.tipo_direccion == tipo && i.ciudad == ciudad}
	end

	def buscar_direccion_fiscal
		@direcciones.select{|i| i.es_fiscal?}
	end
	def buscar_direccion_cobro
		@direcciones.select{|i| i.es_cobro?}
	end
	def buscar_direccion_habitacion
		@direcciones.select{|i| i.es_habitacion?}
	end

end