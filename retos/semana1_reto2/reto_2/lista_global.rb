class ListaGlobal
	attr_accessor :disponible
	#@@disponible = {}
	def initialize
		@disponible = {palo: 20,
						hilo_arana: 20,
						flint: 20,
						pluma: 20,
						madera: 20,
						piedra: 20,
						libro: 20,
						obsidiana: 20,
						diamante: 20,
						arena: 20,
						sulfuro: 20}
	end
	
end