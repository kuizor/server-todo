require 'rest_client'
require_relative 'articulos'

class Digg
	attr_accessor :digg, :articulo
	def initialize
		@digg = RestClient.get 'http://digg.com/api/news/popular.json'
		@digg = JSON.parse(@digg) #parse
		@articulo = []
		@con = 0
	end

	def consulta_articulo
		@digg["data"]["feed"].each do |k|
			@articulo.push Articulos.new(Time.at(k["date"]).getlocal,k["content"]["author"],k["content"]["title"])
		end
		@articulo
	end

	def fecha
		@pepe = @digg["data"]["feed"][2]["date"]
		puts @pepe
		#@coco = Time.at(@pepe).zone
		@coco = Time.at(@pepe).getlocal #hora local
		puts @coco
	end
	def recorre
		@articulo.each do |l|
			puts l.fecha
			puts l.autor
			puts l.titulo
		end
	end
end

#dig = Digg.new

#dig.consulta_articulo
#dig.fecha