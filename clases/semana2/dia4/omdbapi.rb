require 'rest_client'
require_relative 'movie'
#titulo, año y ordene
class Omd
	attr_accessor :movie, :omd
	def initialize
		@omd = RestClient.get 'http://www.omdbapi.com/?t=Game%20of%20Thrones&Season=1'
		@omd = JSON.parse(@omd)
		@movie = []
	end
	def consultar_movie
		#@omd["Title"] #Titulo de la serie
		#@omd["Episodes"][0]["Title"]
		@omd["Episodes"].each do |k|
			@movie << Movie.new(k["Title"],k["Released"])
			#@movie.push(k["Title"],k["Released"])
		end
	end
end

#mov = Omd.new
#mov.consultar_movie
#puts mov.movie
#puts "Desordenado"
#mov.mostrar
#puts "\nOrdenado (menor-mayor)"
#mov.ordenar
#mov.mostrar


token de slack-API   xoxp-13054795922-13198143829-14870028791-79eb9d39d2