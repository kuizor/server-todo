require_relative 'service'
require_relative 'font'
class Fonts
	def initialize
		@service = Service.new
		@fonts = []
		#buscar_font
	end
	#attr_accessor :fonts, :hash
	def buscar_font#(option,key,secret)
		#system("clear")
		puts "Consultando Fuentes disponibles.."
		@hash = @service.call_service("font","XP00G79ZEMZCQRDS","CHKMWH4MYRHKFNF2","")
		@hash.each do |i|
			@fonts << Font.new(i)
		end
		show_fonts
	end
	def show_fonts
		@cont = 0
		@cont2 = 0
		#system("clear")
		puts "-----------Lista de Fuentes-------------"
		@fonts.each do |i|
			puts "==============================="
			#puts "#{@cont} -->Id:#{i.id}, Titulo:#{i.titulo}"
			puts " Id:#{i.id}, Titulo:#{i.titulo}"
			@cont +=1
			@cont2 +=1
			if (@cont2 == 5)
				gets
				system("clear")
				@cont2 = 0
			end
		end
		return 0
	end
end
