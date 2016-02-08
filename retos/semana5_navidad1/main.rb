require_relative 'service'
require_relative 'render'
require_relative 'mostrar'
require_relative 'fonts'
class Main
	def initialize
		@service = Service.new
		@render = Render.new
		@fonts = Fonts.new
		main
	end
	private
	def main
		@res=2
		@sw = 0
		system("clear")
		puts "*******************Bienvenido********************"
		puts "*                                               *"
		puts "*            Redaccion Puño y Letra             *"
		puts "*                 Version 1.8                   *"
		puts "*         Creado por: Miguel Brazzoduro         *"
		puts "*                                               *"
		puts "*************************************************"
		puts "    (Para probar,deje los espacios en blanco)"
		sleep(1)
		puts "\n\nCargando modulos...\n"
		sleep(5)
		system("clear")
		puts "Introduzca su key (Ejemplo: XSDFSDFFZCQRDS)"
		@key = gets.chomp
		if(@key=='')
			@key='XP00G79ZEMZCQRDS'					#KEY por defecto en caso que se deje en blanco
			puts "Key por defecto.."
		end
		puts "Introduzca su Secret (Ejemplo: SDFSDF2CHKM23SAD)"
		@secret = gets.chomp
		if(@secret=='')
			@secret='CHKMWH4MYRHKFNF2'				#SECRET por defecto en caso de dejarn el campo en blanco
			puts "Secret por defecto.."
		end	
		while (@res==2)
			sleep(1)
			system("clear")
			puts "Introduzca el texto..."
			puts "(Presione la tecla ENTER 2 veces para salir del modo de edicion)\n\n\n"
			@texto = multi_linea
			puts "Desea crear un (1)PDF o (2)PNG"
			@tipo = gets.chomp.to_i
			while !validar(@tipo)
				@tipo = gets.chomp.to_i
			end
			system("clear")
			if (@sw==1)
				@fonts.show_fonts
			elsif (@sw==0)
				@sw = 1
				@fonts.buscar_font
			end
			if (@tipo == 1)
				@render.crear_pdf(@texto,@key,@secret)
			elsif (@tipo == 2)
				@render.crear_png(@texto,@key,@secret)
			else
				'Error'
			end
			puts "Desea enviar el texto por email y el archivo? (1)SI 0 (2)NO"
			@opcion = gets.chomp.to_i
			while !validar(@opcion)
				@opcion = gets.chomp.to_i
			end
			system("clear")
			if (@opcion == 1)
				print "Email-> "
				@mail = gets.chomp
				print "Asunto-> "
				@asunto = gets.chomp
				if(@tipo == 1)
					mensaje_pdf
					puts @message
				elsif (@tipo == 2)
					mensaje_png
					puts @message
				end
				#system("clear")
				puts "Enviando email..."
				@service.send_message(@tipo,@mail,@asunto,@message)
			else
				puts "Lista de mensajes enviados.."
				Mostrar.new
			end	
			puts "Desea salir? (1)SI ó (2)NO"
			@res = gets.chomp.to_i
			while !validar(@res)
				@res = gets.chomp.to_i
			end
		end
		system("clear")
		puts "Hasta Luego.."
	end

	def multi_linea todo_texto=""					#metodo texto multilinea
		while (@texto = gets) != "\n"
	    	todo_texto << @texto
	  	end
  		todo_texto
	end
	def validar(op)									#validar opciones ingresadas
		if (op == 1 || op == 2)
			return true
		else
			puts "Opcion invalida (1 o 2)"
			return false
		end
	end
	def mensaje_png						#deserializa el objeto del archivo pngs
		File.open('pngs') do |f|
			@pd = Marshal.load(f)
		end
		@message = @pd[5]+"\n\n Enviado de: Puño y Letra Miguel Brazzoduro"
		#@pd.each do |i|
		#	@message = i+"\n\n Enviado de: Puño y letra Miguel Brazzoduro"
		#	@cont =+1
		#end
		return @message
	end
	def mensaje_pdf						#deserializa el objeto del archivo PDFs
		@cont = 0
		File.open('pdfs') do |f|
			@pd = Marshal.load(f)
		end
		@message = @pd[5]+"\n\n Enviado de: Puño y Letra Miguel Brazzoduro"
		#@pd.each do |i|
		#	@message = i[]+"\n\n Enviado de: Puño y letra Miguel Brazzoduro"
		#	@cont =+1
		#end
		return @message
	end
end
main = Main.new