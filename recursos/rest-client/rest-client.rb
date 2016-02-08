#REST-CLIENT


#PARA UNA CONEXION SSL O CREDENCIALES:
def ejemplo
		resource = RestClient::Resource.new 'https://mipagina', 'usuario', 'password'
		response = resource.get#(:accept => 'application/json')

		puts response
end

#PARA MANEJO DE EXCEPCIONES
 RestClient.get('http://example.com')
=> <RestClient::Response 200 "<!doctype h...">

>> begin
>>   RestClient.get('http://example.com/notfound')
>> rescue RestClient::ExceptionWithResponse => err
>>   err.response
>> end
=> <RestClient::Response 404 "<!doctype h...">