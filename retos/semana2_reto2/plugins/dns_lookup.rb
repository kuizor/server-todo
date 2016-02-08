#DNSlookup
require 'rest_client'

class Pepe
	def initialize
		puts "\nIntroduzca el DNS"
		@web = gets.chomp.to_s
		puts RestClient.get('http://api.hackertarget.com/dnslookup/?q='+@web)
	end
end