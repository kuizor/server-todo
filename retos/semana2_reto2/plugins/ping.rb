#Ping
require 'rest-client'
class Ping
	def initialize
		puts "\nIntroduzca la IP"
		@ip = gets.chomp.to_s
		puts RestClient.get('http://api.hackertarget.com/nping/?q='+@ip)
	end
end