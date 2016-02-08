#Page Links
require 'rest-client'
class PageLink
	def initialize
		puts "\nIntroduzca la WEB"
		@web = gets.chomp.to_s
		puts RestClient.get('http://api.hackertarget.com/pagelinks/?q='+@web)
	end
end