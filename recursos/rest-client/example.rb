require 'rest-client'
class Service
	def call_service(args)
		begin
			response = JSON.parse(RestClient.post "",
				)
			return response
		rescue Exception => e	
			puts "Error 007->("+e+")"
		end			
		else
			puts "El tipo de archivo ingresado es invalido"
		end
	end
	#Cortesia del API MAIL-> http://www.mailgun.com
	def send_message(op,email,asunto,mensaje)								#Metodo Email
		if(op==1)
			@opc ="archivo.pdf"												#Nombre del archivo PDF
		elsif (op==2)
			@opc ="archivo.png"												#nombre del archivo PNG
		end
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

	private
	def option1																# URL PDF
		'https://'+@key+':'+@secret+'@api.handwriting.io/render/pdf'
	end
	def option2																# URL PNG
		'https://'+@key+':'+@secret+'@api.handwriting.io/render/png'
	end
	def option3																# URL Email
		"https://api:key-a636b3cdd3a88d2eab491e7ab242184e"\
			"@api.mailgun.net/v3/sandboxf5a853baca6948beb1c8f8d68e21bc59.mailgun.org/messages"
	end
	def option4																# URL FONTs
		"https://"+@key+":"+@secret+"@api.handwriting.io/handwritings?limit=200&offset=0&order_dir=asc&order_by=id"
	end
end