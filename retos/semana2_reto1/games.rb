require_relative 'service'
require_relative 'game'
require_relative 'deal'
class Games
	attr_accessor :id
	def initialize
		@games = []							#->Array para cargar las variables requeridas(external,cheaps)
		@hash = {}							#->hash para recibir el jason
		@service = Service.new
		@juego = ''
		search_game
		@id = id
	end

	private
	def search_game							#->Buscar Juego y lo carga en un array
		puts "Introduzca el nombre del Juego"
		@juego = gets.chomp.to_s
		@cont = 0
		@link = @service.option(0)
		@hash = @service.call_service(@link,title:@juego)
		@hash.each do |i|
			@games << Game.new(i)
		end
		show_game
	end

	def show_game							#->Cargar array de juegos
		puts "-----------Lista de GAME-------------"
		@hash.each do |i|
			puts "==============================="
			puts "#{@cont} -->#{i["external"]}"
			@cont +=1
		end
		search_game_id
	end

	def search_game_id						#->Busca oferta por ID de Juego
		@cont = 0
		puts "Introduzca el Numero de GAME"
		@num = gets.chomp.to_i
		@games.each do |i|
			if(@cont == @num.to_i)
				@id=i.oferta
				#puts "El id de la oferta es -> #{@id}"
			end
			@cont +=1		
		end
		#@oferta = Deal.new(@id)
	end
end
