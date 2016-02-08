#Headers HTTP
require 'rest-client'
class HeadersHttp
	def initialize
		puts "\nIntroduzca el web"
		@web = gets.chomp.to_s
		puts RestClient.get('http://api.hackertarget.com/httpheaders/?q='+@web)
	end


	def call_service(args)
		RestClient.get end_point, params: args
	end
	
	private
	def end_point
		'http://api.hackertarget.com/httpheaders/'
	end
end