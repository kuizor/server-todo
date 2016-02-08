require_relative "material"
require_relative "recetas"

class Persona < Material
	attr_accessor :name, :material, :cantidad, :material2, :cantidad2
	def initialize (name)
		@name = name
		@materiales = Material.new
		@rece = {} #aqui las recetas de las personas
		@recetas = Recetas.new
	end
	def material_disponible
		@materiales.disponible
	end

	def crear_receta(mat,cant,mat2,cant2,mat3,cant3)
		@recetas.build(mat,cant,mat2,cant2,mat3,cant3)
		@rece = @recetas.receta

		if(mat != nil && cant != nil && mat2 == nil && cant2 ==nil && mat3 == nil && cant3 == nil) #tiene 1 solo ingrediente
			@materiales.disponible.keys.each do |key|
				if(key == mat.to_sym)
					pepe = @materiales.disponible[mat.to_sym] - cant
					@materiales.disponible[mat.to_sym]=pepe
				end
			end
		elsif (mat != nil && cant != nil && mat2 != nil && cant2 !=nil && mat3 == nil && cant3 == nil) #tiene 2 ingredientes
			@materiales.disponible.keys.each do |key|	
				if(key == mat.to_sym)
					pepe = @materiales.disponible[mat.to_sym] - cant
					@materiales.disponible[mat.to_sym]=pepe
				end
				if(key == mat2.to_sym)
					pepe = @materiales.disponible[mat2.to_sym] - cant2
					@materiales.disponible[mat2.to_sym]=pepe
				end
			end
		elsif (mat != nil && cant != nil && mat2 != nil && cant2 !=nil && mat3 != nil && cant3 != nil) # tiene 3 ingredientes
			@materiales.disponible.keys.each do |key|	
				if(key == mat.to_sym)
					pepe = @materiales.disponible[mat.to_sym] - cant
					@materiales.disponible[mat.to_sym]=pepe
				end
				if(key == mat2.to_sym)
					pepe = @materiales.disponible[mat2.to_sym] - cant2
					@materiales.disponible[mat2.to_sym]=pepe
				end
				if(key == mat3.to_sym)
					pepe = @materiales.disponible[mat3.to_sym] - cant3
					@materiales.disponible[mat3.to_sym]=pepe
				end
			end
		end
		puts "Material Disponible: #{@materiales.disponible}"
	end
end

=begin
def main
	puts "Escriba su nombre"
	nom = gets.chomp
	persona = Persona.new(nom)
	puts "Hola #{persona.name}
	Actualmente dispone de los siguientes materiales: 
	l#{persona.material_disponible}"
	
	puts "Crear una receta:"
	puts "Material 1"
	mat = gets.chomp
	puts "Cantidad de Material"
	cant = gets.chomp
	puts "Material 2"
	mat2 = gets.chomp
	puts "Cantidad de material 2"
	cant2 = gets.chomp
	persona.crear_receta("#{mat}","#{cant}","#{mat2}","#{cant2}")
end
=end
#main