
class RecetaGlobal
	attr_accessor :receta_global
	def initialize
		#@receta = receta_globlal
		@receta_global = {arco: {palo: 3, hilo_arana: 3},
		flecha:{palo:1, flint:1, pluma:1},
		barco:{madera: 5}, 
		horno:{piedra: 8},
		cofre:{madera: 8},
		mesa_de_encantamiento:{libro:1, obsidiana:4, diamante:3},
		bloque_de_tnt:{arena:5, sulfuro:4}}
		@receta_creada = {}
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

#pepe = @materiales.disponible[mat2.to_sym] - cant2
	def generar_receta
		mat = 'palo'
		#mat = 'hilo_arana'
		@receta_global.each do |key,value|
			value.each do |key2,value2|
				if(key2 == mat.to_sym)
					puts "key -> #{key}, valor -> #{value}"
					puts "key2 -> #{key2}, valor2 -> #{value2}"
				end
			end
		end	
	end

	def lista_materiales
		@disponible.each do |mat,cant|
			recorro_receta(mat,cant)
		end
	end



	def recorro_receta(mat,cant)
		@receta_global.each do |key,value|
			value.each do |mat,cant|
				if(mat = value[mat])
					puts "aqui"
				end
			end
		end	
	end


	def recorro_receta2(mat,cant)
		@receta_global.each do |key,value|
			value.each do |mat,cant|
				puts "#{key} -> #{value}"
				puts "#{mat} -> #{cant}"
				if(mat = value[mat])
					puts "aqui"
				end
			end
		end	
	end

end