require_relative 'service'
require_relative 'stores'
class Deal
	attr_accessor :store_id
	def initialize(id)
		@service = Service.new
		@id = id								
		search_deal(id)

	end	
	private										#ID de prueba = uxvUFgD6XUoRGvG5k0TyvLKxwte5Tw9ex5vCQWHWWjw%3D ->2
	def search_deal(id)						
		#puts @id
		@service.gets_id(@id)
		@hash = @service.option(1)
		@store_id = @hash['gameInfo']['storeID']
		#puts "El id es: #{@store_id}"
		puts "Buscando..."
	end
end