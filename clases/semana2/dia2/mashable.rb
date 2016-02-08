require 'rest_client'
require_relative 'articulos'
require 'time'

class Mashable
	attr_accessor :mashable, :articulo
	def initialize
		@mashable = RestClient.get 'http://mashable.com/stories.json'
		@mashable = JSON.parse(@mashable) #parse
		@articulo = []
		@con = 0
	end

	def consulta_articulo
		@mashable["new"].each do |k|
			@articulo.push Articulos.new(Time.parse(k["post_date"]).getlocal,k["author"],k["title"])
		end
		@articulo
	end

		def fecha
		@pepe = Time.parse(@mashable["new"][2]["post_date"]).getlocal
		puts @pepe
		#@pepe = Time.parse(@pepe)
		#@coco = Time.new(@pepe)
		#puts @pepe
		#puts Time.at(@pepe).getlocal
			
	end
end

#mas = Mashable.new

#mas.fecha