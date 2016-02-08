require_relative "lista_global"

class Persona < ListaGlobal
	attr_accessor :name
	def initialize (name)
		@name = name
		@lista_global = ListaGlobal.new
		@materiales = {} #aqui las recetas de las personas
		@recetas = Recetas.new
	end
	def material_disponible
		@materiales.disponible
	end

end