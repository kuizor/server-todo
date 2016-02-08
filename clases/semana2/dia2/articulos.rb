class Articulos
	attr_accessor :fecha, :autor, :titulo
	def initialize(fecha,autor,titulo)
		@fecha = fecha
		@autor = autor
		@titulo = titulo
	end
end