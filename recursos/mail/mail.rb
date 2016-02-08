https://www.mailgun.com/
login:kuizor@gmail.com
password:16543115

def send_simple_message(email,asunto,mensaje)
		begin
			response = RestClient.post "https://api:key-a636b3cdd3a88d2eab491e7ab242184e"\
			"@api.mailgun.net/v3/sandboxf5a853baca6948beb1c8f8d68e21bc59.mailgun.org/messages",
			:from => "Miguel Brazzoduro <kuizor@gmail.com>",
			:to => "#{email}",
			:subject => "#{asunto}",
			:text => "#{mensaje}",
			:attachment => File.new(File.join("otro/","main.rb"))
		rescue RestClient::ExceptionWithResponse => err
			err.response
		end
	end


	===================00

	def send_message(email,asunto,mensaje)
		begin
			response = RestClient.post option3,
			:from => "Miguel Brazzoduro <kuizor@gmail.com>",
			:to => "#{email}",
			:subject => "#{asunto}",
			:text => "#{mensaje}",
			:attachment => File.new(File.join("./",@opc))
		rescue RestClient::ExceptionWithResponse => err
			puts "Error 008-> ("+err.response+")"
		end
		puts "Su email fue enviado..."
	end