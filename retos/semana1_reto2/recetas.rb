require_relative "material"
class Recetas < Material
	attr_accessor :receta
	def initialize
		@receta = {}
	end

	def build(mat1,cant1,mat2,cant2,mat3,cant3)
		if(mat1 == 'palo' && cant1 == 3 && mat2 == 'hilo_arana' && cant2 == 3 && mat3 == nil && cant3 == nil)
			return @receta[:arco] = {:palo => 3, :hilo_arana => 3}
			#return "arco"
		elsif (mat1 == 'palo' && cant1 == 1 && mat2 == 'flint' && cant2 == 1 && mat3 == 'pluma' && cant3 == 1)
			return @receta[:flecha] = {:palo => 1, :flint => 1, :pluma => 1}
			#return "flecha"
		elsif (mat1 == 'madera' && cant1 == 5 && mat2 == nil && cant2 == nil && mat3 == nil && cant3 == nil)
			return @receta[:barco] = {:madera => 5}
			#return "barco"
		elsif (mat1 == 'piedra' && cant1 == 8 && mat2 == nil && cant2 == nil && mat3 == nil && cant3 == nil)
			return @receta[:horno] = {:piedra => 8}
			#return "horno"
		elsif (mat1 == 'madera' && cant1 == 8 && mat2 == nil && cant2 == nil && mat3 == nil && cant3 == nil)
			return @receta[:cofre]= {:madera => 8, :hilo_arana => 3}
			#return "cofre"
		elsif (mat1 == 'libro' && cant1 == 1 && mat2 == 'obsidiana' && cant2 == 4 && mat3 == 'diamante' && cant3 == 3)
			return @receta[:mesa_de_encantamiento] = {:libro => 1, :obsidiana => 4, :diamante => 3}
			#return "mesa de encantamiento"
		elsif (mat1 == 'arena' && cant1 == 5 && mat2 == 'sulfuro' && cant2 == 4 && mat3 == nil && cant3 == nil)
			return @receta[:bloque_de_tnt] = {:arena => 5, :sulfuro => 4}
			#return "bloque de TNT"
		else
			return "La receta no existe"
		end
	end
end