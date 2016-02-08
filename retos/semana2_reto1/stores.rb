require_relative 'service'
require_relative 'store'
class Stores
	def initialize(id)
		@tiendas = []						#->array donde almacenamos las variables requeridas
		@hash = {}							#->hash donde recibe el Jason
		@service = Service.new
		puts id
		search_store(id)
	end
	private
	def search_store(id)					#Buscar tiendas
		@hash = @service.option(id.to_i)
		@hash.each do |i|
			@tiendas << Store.new(i)
		end
		return show_store
	end
	def show_store							#->Muestra las tiendas
		@cont = 1
		system("clear")
		puts "-----------Lista de tiendas-------------"
		@tiendas.each do |i|
			puts "==============================="
			#puts "#{@cont} ID--> #{i.storeid}, Nombre--> #{i.storename}"
			puts "   #{@cont}.-#{i.storename}"
			@cont +=1
		end
		return 0
	end
	def search_store_unica					#->buscar una tienda  
		@idstore = gets.chomp.to_i
		@tiendas.each do |i|
			if (i.storeid.to_i == @idstore)
				puts "ID--> #{i.storeid}, Nombre--> #{i.storename}"
				#puts i
			end
		end
		return 0
	end	
end