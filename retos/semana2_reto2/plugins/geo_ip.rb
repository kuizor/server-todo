#Geo Posicion por IP
require 'rest-client'
class GeoIp
	def initialize
		puts "\nIntroduzca el IP"
		@web = gets.chomp.to_s
		puts RestClient.get('http://api.hackertarget.com/geoip/?q='+@web)
	end
end