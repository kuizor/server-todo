require 'rest-client'
class Service
	def call_service(link,args)
		JSON.parse(RestClient.get link, params: args)
	end

	def option(op)
		if(op == 0)											#-> link game
			'http://www.cheapshark.com/api/1.0/games'
		elsif (op == 1)										#-> link deals
			JSON.parse(RestClient.get "http://www.cheapshark.com/api/1.0/deals?id=#{@id}")
		elsif (op == 2)										#-> link store
			JSON.parse(RestClient.get "http://www.cheapshark.com/api/1.0/stores")
		else
			"La opcion es invalida para: #{@id}"	
		end
	end
	def gets_id(id)
		@id = id
	end

end

