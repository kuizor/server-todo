#servicios
require 'rest_client'

class Servicio
	def call_service(args)
		JSON.parse(RestClient.get end_point, params: args)
	end
	private
	def end_point
		'http://www.omdbapi.com'
	end
end