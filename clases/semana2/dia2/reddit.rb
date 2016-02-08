require 'rest_client'
require_relative 'articulos'

class Reddit
	attr_accessor :reddit, :articulo
	def initialize
		@reddit = RestClient.get 'https://www.reddit.com/.json'
		@reddit = JSON.parse(@reddit) #parse
		@articulo = []
		@con = 0
	end

	def consulta_articulo
		@reddit["data"]["children"].each do |k|
			@articulo.push Articulos.new(Time.at(k["data"]["created"]).getlocal,k["data"]["author"],k["data"]["title"])
		end
		@articulo
	end
	def fecha
		@pepe = @reddit["data"]["children"][2]["data"]["created"]
		puts Time.at(@pepe)
	end
end

#red = Reddit.new

#red.fecha

