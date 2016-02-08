require_relative 'reddit'
require_relative 'mashable'
require_relative 'digg'

class Main
	attr_accessor :noticias, :noti
	def initialize
		@noticias = []
		@red = Reddit.new
		@mas = Mashable.new
		@dig = Digg.new
		@noti = {}
	end

	def consulta_array
		@noticias += @red.consulta_articulo()  
		@noticias += @mas.consulta_articulo()
		@noticias += @dig.consulta_articulo()
	end

	def muestra_array
		@noticias.each do |k|
			puts k.fecha
			puts k.autor
			puts k.titulo
		end
	end
#===============================================hasta aqui ==============================================
	def hash
		@noti.each do |key,value|
			@noti[:fecha] = @red.fecha
			@noti[:fecha] = @mas.fecha
			@noti[:fecha] = @dig.fecha
			@noti[:autor] = @red.autor
			@noti[:autor] = @mas.autor
			@noti[:autor] = @dig.autor
			@noti[:titulo] = @red.titulo
			@noti[:titulo] = @mas.titulo
			@noti[:titulo] = @dig.titulo
		end
	end

	def muestra_hash
		@noti.each do |key,value|
			puts "#{key} -> #{value}"
		end
		puts @noti[:titulo]
	end

	def ordena
		@noticias.sort!{|a,b| b.fecha <=> a.fecha}
	end

end

main = Main.new
#main.consultar
main.hash
#puts "Desordenada"
#main.muestra
main.muestra_hash
#puts "Ordenada\n \n \n"
#main.ordena
#main.muestra
