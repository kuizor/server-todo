require_relative 'materiales'
require_relative 'recetas'
class Persona
	attr_accessor :nombre, :materiales, :recetas
	def initialize(nombre)
		@nombre = nombre
		@materiales = {}
		@recetas = {}
	end

end