class RecetasDisponibles
	attr_accessor :recetas_dispo
	def initialize
		@recetas_dispo = {arco: {palo: 3, hilo_arana: 3}, 
				  		flecha:{palo:1, flint:1, pluma:1},
				  		barco:{madera: 5},
				  		horno:{piedra: 8},
				  		cofre:{madera: 8},
				  		mesa_de_encantamiento:{libro:1, obsidiana:4, diamante:3},
				  		bloque_de_tnt:{arena:5, sulfuro:4}}
	end


	def @recetas_dispo[arco][palo] value
end