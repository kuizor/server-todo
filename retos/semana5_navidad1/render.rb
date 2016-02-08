require_relative 'tiempo'
require_relative 'service'
require_relative 'database'
require_relative 'fonts'
class Render									#Clase para cargar los parametros
	def initialize
		@tiempo = Tiempo.new
		@service = Service.new
		@db = DataBase.new
		@parametros = {}
		@array = []
		@array2 = []
	end
	#attr_accessor :array
	def crear_pdf(texto,key,secret)				#metodo para renderizar los PDF
		puts "Configuracion de parametros del PDF...\n\n"
		sleep(2)
		@array << @tiempo.fecha
		@array << @tiempo.hora
		Fonts.new
		puts "(Elija de la lista un Id para handwriting_id)\n"
		print "\nhandwriting_id (2D5S46A80003)->"
		@handwriting_id = gets.chomp
		if (@handwriting_id=='')
			@parametros[:handwriting_id]='2D5S46A80003'
			@array << '2D5S46A80003'
		else
			@parametros[:handwriting_id]=@handwriting_id
			@array << @handwriting_id
		end
		print "handwriting_size (20pt)->"
		@handwriting_size = gets.chomp
		if (@handwriting_size=='')
			@parametros[:handwriting_size]='20pt'
			@array << '20pt'
		else
			@parametros[:handwriting_size]=@handwriting_size
			@array << @handwriting_size
		end
		print "handwriting_color (0,0,0,1)->"
		@handwriting_color = gets.chomp
		if(@handwriting_color=='')
			@parametros[:handwriting_color]='(0,0,0,1)'
			@array << '(0,0,0,1)'
		else
			@parametros[:handwriting_color]=@handwriting_color
			@array << @handwriting_color
		end
		@array << texto

		print "width (7in)->"
		@width = gets.chomp
		if(@width=='')
			@parametros[:width]='7in'
			@array << '7in'
		else
			@parametros[:width]=@width
			@array << @width
		end
		print "height (5in)->"
		@height = gets.chomp
		if (@height=='')
			@parametros[:height]='5in'
			@array << '5in'
		else
			@parametros[:height]=@height
			@array << @height
		end
		print "min_padding (vacio por defecto)->"
		@min_padding = gets.chomp
		@parametros[:min_padding] = @min_padding
		@array << @min_padding
		print "line_spacing (1.5)->"
		@line_spacing = gets.chomp
		if(@line_spacing=='')
			@parametros[:line_spacing]=1.5
			@array << '1.5'
		else
			@parametros[:line_spacing]=@line_spacing
			@array << @line_spacing
		end
		print "line_spacing_variance (vacio por defecto)->"
		@line_spacing_variance = gets.chomp
		@parametros[:line_spacing_variance]=@line_spacing_variance
		@array << @line_spacing_variance
		print "word_spacing_variance (vacio por defecto)->"
		@word_spacing_variance = gets.chomp
		@parametros[:word_spacing_variance]=@word_spacing_variance
		@array << @word_spacing_variance
		print "random_seed (-1)->"
		@random_seed = gets.chomp
		if(@random_seed=='')
			@parametros[:random_seed]='-1'
			@array << '-1'
			@parametros[:random_seed]=@random_seed
			@array << @random_seed
		end
		@parametros[:text] = texto
		system('clear')
		@db.guardar_pdf(@array)
		@service.call_service('pdf',key,secret,@parametros)
	end

	def crear_png(texto,key,secret)						#Metodo para renderizar los PNG
		puts "Configuracion de parametros del PNG...\n\n"
		sleep(2)
		@array2 << @tiempo.fecha
		@array2 << @tiempo.hora
		Fonts.new
		puts "(Elija de la lista un Id para handwriting_id)\n"
		print "\nhandwriting_id (2D5S46A80003)->"
		@handwriting_id = gets.chomp
		if (@handwriting_id=='')
			@parametros[:handwriting_id]='2D5S46A80003'
			@array2 << '2D5S46A80003'
		else
			@parametros[:handwriting_id]=@handwriting_id
			@array2 << @handwriting_id
		end
		print "handwriting_size (20px)->"
		@handwriting_size = gets.chomp
		if (@handwriting_size=='')
			@parametros[:handwriting_size]='20px'
			@array2 << '20px'
		else
			@parametros[:handwriting_size]=@handwriting_size
			@array2 << @handwriting_size
		end
		print "handwriting_color (#000000)->"
		@handwriting_color = gets.chomp
		if(@handwriting_color=='')
			@parametros[:handwriting_color]='#000000'
			@array2 << '#000000'
		else
			@parametros[:handwriting_color]=@handwriting_color
			@array2 << @handwriting_color
		end
		@array2 << texto
		print "width (504px)->"
		@width = gets.chomp
		if(@width=='')
			@parametros[:width]='505px'
			@array2 << '505px'
		else
			@parametros[:width]=@width
			@array2 << @width
		end
		print "height (360px)->"
		@height = gets.chomp
		if (@height=='')
			@parametros[:height]='360px'
			@array2 << '360px'
		else
			@parametros[:height]=@height
			@array2 << @height
		end
		print "min_padding (vacio por defecto)->"
		@min_padding = gets.chomp
		@parametros[:min_padding]=@min_padding
		@array2 << @min_padding
		print "line_spacing (1.5)->"
		@line_spacing = gets.chomp
		if(@line_spacing=='')
			@parametros[:line_spacing]=1.5
			@array2 << 1.5
		else
			@parametros[:line_spacing]=@line_spacing
			@array2 << @line_spacing
		end
		print "line_spacing_variance (vacio por defecto)->"
		@line_spacing_variance = gets.chomp
		@parametros[:line_spacing_variance]=@line_spacing_variance
		@array2 << @line_spacing_variance
		print "word_spacing_variance (vacio por defecto)->"
		@word_spacing_variance = gets.chomp
		@parametros[:word_spacing_variance]=@word_spacing_variance
		@array2 << @word_spacing_variance
		print "random_seed (-1)->"
		@random_seed = gets.chomp
		if(@random_seed=='')
			@parametros[:random_seed]='-1'
			@array2 << '-1'
		else
			@parametros[:random_seed]=@random_seed
			@array2 << @random_seed
		end
		@parametros[:text] = texto
		system('clear')
		@db.guardar_png(@array2)
		@service.call_service('png',key,secret,@parametros)
	end
end