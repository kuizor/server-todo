require_relative 'games'
require_relative 'deal'
require_relative 'stores'
class Main
	def initialize
		app		
	end
	private
	def app
		op = 's'
		puts "********Bienvenido el buscador de Juegos por tienda**********"
		while (op == 's') do
			@games = Games.new
			@oferta = Deal.new(@games.id)
			@tienda = Stores.new(@oferta.store_id)
			puts "Desea buscar mas Juegos? (s/n)"
			op = gets.chomp
			system("clear")
		end
		#system("clear")
	end
end

main = Main.new