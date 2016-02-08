require_relative 'omdbapi'
class Main
	attr_accessor :peliculas
	def initialize
		@omi = Omd.new
		@peliculas = []
	end

	def consulta
		@omi.consultar_movie
		@peliculas += @omi.movie
	end

	def mostrar
		@cont = 0
		@peliculas.each do |i|
			puts "#{@cont} -> Titulo: #{i.titulo} y la fecha es:#{i.anio}"
			@cont +=1
		end
	end
	def ordenar
		@peliculas.sort {|a,b| b.anio <=> a.anio}
	end	
end

main = Main.new
main.consulta
#puts main.peliculas
puts "Desordenado"
main.mostrar
puts "\nOrdenado"
main.ordenar
main.mostrar