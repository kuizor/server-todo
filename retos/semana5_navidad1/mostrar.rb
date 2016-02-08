#clase para mostrar todos los mensajes creados
#require_relative 'object_pdf'
#require_relative 'object_png'
class Mostrar 									#Clase para mostrar la base de datos
	def initialize
		puts "Lista de PDFs y sus parametros..."
		mostrar_pdf
		puts "\n\n"
		puts "Lista de PNGs y sus parametros..."
		mostrar_png
	end
	#attr_accessor :pd, :pn
	private
	def mostrar_pdf								#deserializa el objeto del archivo PDFs
		@cont = 0
		begin
			File.open('pdfs') do |f|
				@pd = Marshal.load(f)
			end
		rescue Exception => e
			puts "Error 009->("+e.message+")"
		end
		begin
			@pd.each do |i|
				if (@cont>12)
					@cont=0
				end
				if (@cont == 0)
					puts "\n"
					puts "*****************************************"
				end
				puts "========== #{@cont} ==========="
				puts "   #{i}"
				#puts "#{@cont}.-"+i.fecha+' '+i.hora+' '+i.handwriting_id+' '+i.handwriting_size+''+i.handwriting_color+' '+i.text+' '+
				#i.width+' '+i.height+' '+i.min_padding+' '+i.line_spacing.to_s+' '+i.line_spacing_variance.to_s+' '+
				#i.word_spacing_variance.to_s+' '+i.random_seed.to_s+"\n"
				
				@cont +=1
			end
		rescue Exception => e
			puts "Error 010->("+e.message+")"			
		end
		return 0
	end
	def mostrar_png								#deserializa el objeto del archivo pngs
		@cont = 0
		begin
			File.open('pngs') do |f|
				@pn = Marshal.load(f)
			end
		rescue Exception => e
			puts "\nError 011->("+e.message+")"
		end
		begin		
			@pn.each do |i|
				if (@cont > 12)
					@cont =0
				end
				if (@cont == 0)
					puts "\n"
					puts "*****************************************"
				end
				puts "========= #{@cont} ==========="
				puts "  #{i}"
				#puts "#{@cont}.-"+fecha.i+' '+i.hora+' '+i.handwriting_id+' '+i.handwriting_size+''+i.handwriting_color+' '+i.text+' '+
				#i.width+' '+i.height+' '+i.min_padding+' '+i.line_spacing.to_s+' '+i.line_spacing_variance.to_s+' '+
				#i.word_spacing_variance.to_s+' '+i.random_seed.to_s+"\n"
				@cont +=1
			end
		rescue Exception => e
			puts "\nError 012->("+e.message+")"			
		end
		return 0
	end
end
