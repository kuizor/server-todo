#Geo Posicion por Dominio
require 'rest-client'
class GeoDom
	def initialize
		puts "\nIntroduzca el Dominio"
		@web = gets.chomp.to_s
		puts RestClient.get('http://api.hackertarget.com/geoip/?q='+@web)
	end
end