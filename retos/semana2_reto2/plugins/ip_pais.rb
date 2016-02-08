#Ip pais
require 'rest-client'
class IpPais
	def initialize
		puts "\nIntroduzca el IP"
		@web = gets.chomp.to_s
		@ip_pais = RestClient.get('http://geoip.nekudo.com/api/'+@web)
		@ip_pais = JSON.parse(@ip_pais)
		puts "#\n El pais es:#{@ip_pais['country']['name']}"
	end
end