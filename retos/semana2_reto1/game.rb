class Game
	attr_accessor :titulo, :oferta
	def initialize(game)
		@titulo = game['external']			#->variable de intercambio Titulo
		@oferta = game['cheapestDealID']	#->variable de intercambio de ofertas
	end
end