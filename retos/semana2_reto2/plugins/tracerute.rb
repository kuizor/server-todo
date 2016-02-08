#Tracerute
require 'rest-client'
class Tracert
	def initialize
		puts "\nIntroduzca el IP a Trazar"
		@ip = gets.chomp.to_s
		puts RestClient.get('http://api.hackertarget.com/mtr/?q='+@ip)
	end
end