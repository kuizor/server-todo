require_relative 'servicio'
require_relative 'pelicula'
class Main
	attr_accessor :pelicula, :hash
	def initialize
		@ser = Servicio.new
		@peliculas = []
	end
	def buscar_titulo(movie)
		@hash = @ser.call_service(s:movie)
		@hash["Search"].each do |i|
			@peliculas << Pelicula.new(i)
		end
		show
		return 0
	end
	#========================================================
	def buscar_titulo_tipo(movie,type)
		@hash = @ser.call_service(s:movie,type:type)
		#puts @hash
		if(@hash["Response"] != 'False')
			@hash["Search"].each do |i|
				@peliculas << Pelicula.new(i)
			end
			show
		else
			puts "La pelicula no existe, o los parametros no coinciden con ningun registro."
		end
		return 0
	end
	#========================================================
	def buscar_titulo_year(movie,year)
		#year = year.to_i
		@hash = @ser.call_service(s:movie,y:year)
		#puts "	hash #{@hash}"
		@hash["Search"].each do |i|
			@peliculas << Pelicula.new(i)
		end
		#puts "peliculas #{@peliculas}"
		show
		return 0
	end
	def Ordenar_year
		@peliculas.sort!{|a,b| a.year <=> b.year}
		show
	end

	def show
		@peliculas.each do |i|
			puts "Titulo #{i.titulo}"
			puts "Tipo #{i.type}"
			puts "Año #{i.year}\n"
		end
	end
end

